-----------------------------------------------------------------------
-- Suppression du trigger
-- Ajout de la colonne User_id pour le mécanisme de session ID
-- Remplissage de la colonne User_id
-----------------------------------------------------------------------
  
declare
  -- Modèle de la base Elyx Manager (MOD_XXX)
  vdesign varchar2(50):='&1';
  -- Catalogue de la base Elyx Manager (CAT_XXX)
  vcatalogue varchar2(50):='&2';
  -- Données de la base Elyx Manager (DAT_XXX)
  vdata varchar2(50):='&3';
  
  v_NOM     varchar2(80);
  v_NUMERO_AD  NUMBER;

  -- Déclaration d'un curseur dynamique
  TYPE CurClass IS REF CURSOR;
  c1 CurClass ;
  v_inv_query  VARCHAR2(500);
  v_query VARCHAR2(500);
  idCol NUMBER;
  
begin
--- Sélection des noms et Ids des utilisateurs de APICD_UTILISATEUR qui sont également dans APIC_USER ---
  v_inv_query:='select NOM, NUMERO_AD from '||vdesign||'.APICD_UTILISATEUR,
(select max(VERSION) as MAXI,NUMERO_AD as NUM from '||vdesign||'.APICD_UTILISATEUR where NUMERO_MODELE = (select distinct numero_ad from '||vdesign||'.apicd_modele where schema = '''||vcatalogue||''') group by NUMERO_AD)LIST,
(select USER_NAME as NAMECAT_USER from '||vcatalogue||'.APIC_USER)LISTUSER
 where VERSION = LIST.MAXI and NUMERO_AD = LIST.NUM and ACTION<>3 and NOM = LISTUSER.NAMECAT_USER';
 
  -- Suppression du trigger déclenché à la connexion de l'utilisateur 
  BEGIN
    execute immediate 'drop trigger '||vdata||'.APIC_AR_LOGON';
    exception
      when others then
      null;
  END;
  
  -- Ajout de la colonne USER_ID dans la table APIC_USER si elle n'existe pas
  BEGIN
    v_query := 'SELECT COLUMN_ID FROM ALL_TAB_COLUMNS WHERE TABLE_NAME = ''APIC_USER'' AND OWNER = '''||vcatalogue||''' AND COLUMN_NAME=''USER_ID''';
    execute immediate v_query into idCol;
    exception 
      when NO_DATA_FOUND then
      execute immediate 'alter table ' ||vcatalogue|| '.APIC_USER ADD (USER_ID NUMBER(10))';
  END;
  
  -- Mise à jour de la colonne USER_ID de APIC_USER avec le numéro de la table APICD_UTLISATEUR
  OPEN c1 FOR v_inv_query;
  LOOP
  FETCH c1 INTO v_NOM, v_NUMERO_AD;
  EXIT WHEN c1%NOTFOUND;
  execute immediate 'update ' ||vcatalogue|| '.APIC_USER set USER_ID = '||v_NUMERO_AD||' where USER_NAME = '''||v_NOM||'''';
  END LOOP;
  CLOSE c1;
end;
/
commit;