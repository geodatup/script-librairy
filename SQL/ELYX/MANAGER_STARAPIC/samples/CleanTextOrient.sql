------------------------------------------------------------------------------------------------------------------
--    Traitement r�alis� :											
--      Correction des donn�es d�cimales stock�e en type VARCHAR :                                             
--        Pour un catalogue, une table et une colonne donn�s           					       
--        le caract�re , (virgule) est remplac� par le caract�re . (point d�cimal)
--        Ce traitement � �t� d�velopp� initialement pour le cas des orientations de texte graphique     
--
-- variables a renseigner :
-------------------------------
-- vdata	: nom du sch�ma Oracle contenant la table � modifier
-- vtable	: nom de la table � modifier
-- vcolonne     : nom de la colonne � modifier
--                  pour l'orientation d'un texte graphique, le nom est celui du nom de l'attribut suffix� par "_O".
--                  exemple : pour un attribut "LIBELLE", le nom de la colonne est "LIBELLE_O"                                           
------------------------------------------------------------------------------------------------------------------

SET SERVEROUTPUT ON
declare
	vdata varchar2(50):='&1';
	vtable varchar2(50):='&2';
	vcolonne varchar2(50):='&3';
	
	-- D�claration d'un curseur dynamique
	TYPE CurClass IS REF CURSOR;
	cur_val CurClass;
	
	v_val VARCHAR2(500);
        v_val_final VARCHAR2(500);
	v_query_select VARCHAR2(500);
	v_query_update VARCHAR2(500);
	
begin
	BEGIN
		v_query_select:= 'select '||vcolonne||' from '||vdata||'.'||vtable||' ';		
		OPEN cur_val FOR v_query_select;
		LOOP  
		FETCH cur_val INTO v_val;
		EXIT WHEN cur_val%NOTFOUND;
			IF (v_val IS NOT NULL) THEN
				v_val_final := v_val;
				v_val_final := replace(v_val_final,',','.');
				v_query_update := 'update '||vdata||'.'||vtable||' set '||vcolonne||' = :1 where '||vcolonne||' = :2 ';
				execute immediate v_query_update using v_val_final, v_val;
			END IF;
		END LOOP; 
	END;
	DBMS_OUTPUT.PUT_LINE('Remplacement termin�.');
commit;
end;