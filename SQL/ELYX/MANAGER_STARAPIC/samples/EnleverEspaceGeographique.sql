-----------------------------------------------------------------------------------
-- Enlever le suffixe "- espace géographique" du nom de la carte dans Elyx Office
-----------------------------------------------------------------------------------


-----------------------------------------------------------------------------------
-- Fonction pour remplacer une chaîne de caractères dans un CLOB
-----------------------------------------------------------------------------------

create or replace function clobReplace
( p_clob          in clob,
  p_what          in varchar2,
  p_with          in varchar2 ) return clob is

  c_whatLen       constant PLS_INTEGER := length(p_what);
  c_withLen       constant PLS_INTEGER := length(p_with);

  l_return        clob;
  l_segment       clob;
  l_pos           PLS_INTEGER := 1-c_withLen;
  l_offset        PLS_INTEGER := 1;

begin

  if p_what is not null then
    while l_offset < DBMS_LOB.GETLENGTH(p_clob) loop
      l_segment := DBMS_LOB.SUBSTR(p_clob,32767,l_offset);
      LOOP
        l_pos := DBMS_LOB.INSTR(l_segment,p_what,l_pos+c_withLen);
        exit when (NVL(l_pos,0) = 0) or (l_pos = 32767-c_withLen);
        l_segment := TO_CLOB( DBMS_LOB.SUBSTR(l_segment,l_pos-1)
                            ||p_with
                            ||DBMS_LOB.SUBSTR(l_segment,32767-c_whatLen-l_pos-c_whatLen+1,l_pos+c_whatLen));
      end loop;
      l_return := l_return||l_segment;
      l_offset := l_offset + 32767 - c_whatLen;
    end loop;
  end if;
 
  return(l_return);

end;
/

-----------------------------------------------------------------------------------
-- Enlever le suffixe "- espace géographique"
-----------------------------------------------------------------------------------

declare

  vcatalogue varchar2(50) := '&1';          -- nom du catalogue
  
  vParameterIdentDoc       varchar2(50);
  vParameterIdentWin       varchar2(50);
  vParameterIdentWinView   varchar2(50);
  vParameterIdentViewEns   varchar2(50);
  vParameterName           varchar2(200);
  vParameterNameNew        varchar2(200);
  vParameterNameViewEns    varchar2(200);
  vParameterNameViewEnsNew varchar2(200);
  vParameterContext        varchar2(50);
  
  vParameterData           clob;
  vParameterDataNew        clob;
  vParameterDataWrite      clob;
  
  vPosition                number;
  vLength                  integer;
  vParameterCount          number;
  vParameterCountViewEns   number;
  
  sql_stmt_pa_ident        varchar2(10000);
  type CurPaIdent is ref cursor;
  cur_pa_ident CurPaIdent;
  
begin

-----------------------------------------------------------------------------------
-- Chercher ID de la carte dont le nom contient le suffixe "- espace géographique"
-----------------------------------------------------------------------------------

  sql_stmt_pa_ident := 'select PA_IDENT from '||vcatalogue||'.STCA_PARAM where PA_TYPE=''APIC_MAP_DOCUMENT'' and PA_NAME like ''%- espace géographique'' and PA_NAME not like ''Vue élargie de%'' and PA_DATA like ''%- espace géographique%''';
  open cur_pa_ident for sql_stmt_pa_ident;
  loop
    fetch cur_pa_ident into vParameterIdentDoc;
    exit when cur_pa_ident%notfound;
    
    execute immediate 'select PA_NAME from '||vcatalogue||'.STCA_PARAM where PA_IDENT='||vParameterIdentDoc||'' into vParameterName;
    vPosition := INSTR(vParameterName,' - espace géographique',1,1);
    vParameterNameNew := SUBSTR(vParameterName, 1, vPosition-1);
    
    execute immediate 'select CTX_IDENT from '||vcatalogue||'.STCA_PARAM where PA_IDENT='||vParameterIdentDoc||'' into vParameterContext;
    
    execute immediate 'select count(PA_IDENT) from '||vcatalogue||'.STCA_PARAM where PA_TYPE=''APIC_MAP_DOCUMENT'' and PA_NAME='''||vParameterNameNew||''' and CTX_IDENT='||vParameterContext||'' into vParameterCount;

-----------------------------------------------------------------------------------
-- S'il n'existe pas une carte avec le même nom dans le contexte
-----------------------------------------------------------------------------------
      
    if (vParameterCount = 0) then

-----------------------------------------------------------------------------------
-- Mettre à jour le nom et PA_DATA des paramètres associés à la carte
-----------------------------------------------------------------------------------
      
      execute immediate 'select PA_IDENT from '||vcatalogue||'.STCA_PARAM where PA_TYPE=''APIC_MAP_WINDOW'' and PA_NAME='''||vParameterName||''' and CTX_IDENT='||vParameterContext||'' into vParameterIdentWin;
      
      execute immediate'update '||vcatalogue||'.STCA_PARAM set PA_NAME='''||vParameterNameNew||''' where PA_IDENT='||vParameterIdentWin||'';
      
      execute immediate 'select PA_IDENT from '||vcatalogue||'.STCA_PARAM where PA_TYPE=''APIC_MAP_WINDOW_VIEW'' and PA_NAME='''||vParameterName||''' and CTX_IDENT='||vParameterContext||'' into vParameterIdentWinView;
      
      execute immediate'update '||vcatalogue||'.STCA_PARAM set PA_NAME='''||vParameterNameNew||''' where PA_IDENT='||vParameterIdentWinView||'';
      
      execute immediate 'select PA_DATA from '||vcatalogue||'.STCA_PARAM where PA_IDENT='||vParameterIdentWinView||'' into vParameterData;
      vParameterDataNew := clobReplace(vParameterData, vParameterName, vParameterNameNew);
      vLength := DBMS_LOB.GETLENGTH(vParameterDataNew);
      execute immediate
      'begin
        update '||vcatalogue||'.STCA_PARAM set PA_DATA=empty_clob() where PA_IDENT='||vParameterIdentWinView||' returning PA_DATA into :x;
       end;'
      using out vParameterDataWrite;
    
      DBMS_LOB.WRITEAPPEND(vParameterDataWrite, vLength, vParameterDataNew);
      
      vParameterNameViewEns := 'Vue élargie de ' || vParameterName || '%';

      execute immediate 'select count(PA_IDENT) from '||vcatalogue||'.STCA_PARAM where PA_TYPE=''APIC_MAP_DOCUMENT'' and PA_NAME like '''||vParameterNameViewEns||''' and CTX_IDENT='||vParameterContext||'' into vParameterCountViewEns;
            
      if(vParameterCountViewEns = 1) then
        execute immediate 'select PA_IDENT from '||vcatalogue||'.STCA_PARAM where PA_TYPE=''APIC_MAP_DOCUMENT'' and PA_NAME like '''||vParameterNameViewEns||''' and CTX_IDENT='||vParameterContext||'' into vParameterIdentViewEns;
        
        execute immediate 'select PA_NAME from '||vcatalogue||'.STCA_PARAM where PA_IDENT='||vParameterIdentViewEns||'' into vParameterNameViewEns;
        
        vParameterNameViewEnsNew := 'Vue élargie de ' || vParameterNameNew;
        execute immediate'update '||vcatalogue||'.STCA_PARAM set PA_NAME='''||vParameterNameViewEnsNew||''' where PA_IDENT='||vParameterIdentViewEns||'';
        
        execute immediate 'select PA_DATA from '||vcatalogue||'.STCA_PARAM where PA_IDENT='||vParameterIdentViewEns||'' into vParameterData;
        vParameterDataNew := clobReplace(vParameterData, vParameterNameViewEns, vParameterNameViewEnsNew);     
        vParameterDataNew := clobReplace(vParameterDataNew, vParameterName, vParameterNameNew);

        vLength := DBMS_LOB.GETLENGTH(vParameterDataNew);
        execute immediate
        'begin
          update '||vcatalogue||'.STCA_PARAM set PA_DATA=empty_clob() where PA_IDENT='||vParameterIdentViewEns||' returning PA_DATA into :x;
         end;'
        using out vParameterDataWrite;
    
        DBMS_LOB.WRITEAPPEND(vParameterDataWrite, vLength, vParameterDataNew);
             
      end if;

-----------------------------------------------------------------------------------
-- Mettre à jour le nom et PA_DATA de la carte
-----------------------------------------------------------------------------------
    
      execute immediate'update '||vcatalogue||'.STCA_PARAM set PA_NAME='''||vParameterNameNew||''' where PA_IDENT='||vParameterIdentDoc||'';
    
      execute immediate 'select PA_DATA from '||vcatalogue||'.STCA_PARAM where PA_IDENT='||vParameterIdentDoc||'' into vParameterData;
      
      if(vParameterCountViewEns = 1) then
        vParameterDataNew := clobReplace(vParameterData, vParameterNameViewEns, vParameterNameViewEnsNew);
        vParameterDataNew := clobReplace(vParameterDataNew, vParameterName, vParameterNameNew);
      else
        vParameterDataNew := clobReplace(vParameterData, vParameterName, vParameterNameNew);
      end if;
      
      vLength := DBMS_LOB.GETLENGTH(vParameterDataNew);
      execute immediate
      'begin
        update '||vcatalogue||'.STCA_PARAM set PA_DATA=empty_clob() where PA_IDENT='||vParameterIdentDoc||' returning PA_DATA into :x;
       end;'
      using out vParameterDataWrite;
    
      DBMS_LOB.WRITEAPPEND(vParameterDataWrite, vLength, vParameterDataNew);
      
    end if;
    
  end loop;      
  
  commit;

-----------------------------------------------------------------------------------
-- La fonction clobReplace n'est plus utilisée, on peut la supprimer
-----------------------------------------------------------------------------------
  
  drop function clobReplace;
  
end;
/
