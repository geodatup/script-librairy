
------------------------------------------------------------------------------------------------------------------
 --	Traitement réalisé :																						--
 --	Mise en cohérence des contextes utilisateur par rapport aux roles :											--
 -- 	Pour un catalogue donné, 																				--
 --  		Pour chaque utilisateur présent dans APIC_USER														--
 --	 			Pour chaque Contexte de cet utilisateur															--
 --				1/ SI l'utilisateur est en mode 'choix du role'													--
 --				   retirer les roles qui existent dans le contexte mais pas dans APIC_USER_ROLE					--
 --				2/ SI l'utilisateur est en mode 'pas de choix du role'											--
 --				   remplacer les roles qui existent dans le contexte par ceux qui existent dans APIC_USER_ROLE  --
------------------------------------------------------------------------------------------------------------------
	   

SET SERVEROUTPUT ON
declare
	 -- Catalogue de la base Elyx (CAT_XXX)
	vcatalogue varchar2(50):='&1';
	
	
	
	-- Déclaration d'un curseur dynamique
	 TYPE CurClass IS REF CURSOR;
	cur_user CurClass;
	cur_user_role CurClass;
	cur_list_role CurClass;
	 
	v_query VARCHAR2(500);
	v_query_user_role VARCHAR2(500);
	v_query_ctx_user_role VARCHAR2(500);
	v_query_update_ctx_user_role VARCHAR2(500);	 
	v_user_name VARCHAR2(80);
	v_role_name VARCHAR2(80);
	v_list_role VARCHAR2(500);
	v_nouvelle_list_role VARCHAR2(500);
	v_number_user_role_name NUMBER;
	v_pos_delimiter NUMBER;
	v_length_list_role NUMBER;
	v_param_id NUMBER;
	v_list_role_clob CLOB;
	v_nouvelle_list_role_clob CLOB;
	  
begin
	----------------------------------------------------------------------------------
	-- case 1 : 'utilisateur est en mode 'choix du role'
	----------------------------------------------------------------------------------
	BEGIN
		v_query:= 'select USER_NAME from '||vcatalogue||'.APIC_USER where ROLE_USAGE !=''2'' ';
		
		OPEN cur_user FOR v_query;
		LOOP  -- loop 1
		FETCH cur_user INTO v_user_name;
		EXIT WHEN cur_user%NOTFOUND;
			v_list_role_clob := NULL;
			v_user_name := replace(v_user_name,'''','''''');
			v_query_ctx_user_role := 'select PA_DATA, PA_IDENT from '||vcatalogue||'.STCA_PARAM where USR_LOGIN_NAME='''||v_user_name||''' and PA_TYPE = ''APIC_CTX_USER_ROLE'' ';
			OPEN cur_list_role FOR v_query_ctx_user_role;
			LOOP -- loop 2
			FETCH cur_list_role INTO v_list_role_clob, v_param_id;
			EXIT WHEN cur_list_role%NOTFOUND;
				v_nouvelle_list_role_clob := NULL;
				v_list_role := v_list_role_clob;
				v_nouvelle_list_role := '';
				v_pos_delimiter := 0;
				v_pos_delimiter := INSTR (v_list_role,',',1);
				WHILE (v_pos_delimiter != 0) LOOP
					v_length_list_role := dbms_lob.getlength(v_list_role);
					v_role_name := dbms_lob.substr(v_list_role, v_pos_delimiter -1, 1);
					v_list_role := dbms_lob.substr(v_list_role, v_length_list_role - v_pos_delimiter +1, v_pos_delimiter +1);
					v_role_name := replace(v_role_name,'''','''''');
					v_number_user_role_name := 0;
					if (v_role_name IS NOT NULL) THEN
						v_query_user_role := 'select count(RO_NAME) from '||vcatalogue||'.APIC_USER_ROLE where USER_NAME = '''||v_user_name||''' and RO_NAME = '''||v_role_name||'''';
						execute immediate v_query_user_role into v_number_user_role_name;
						IF (v_number_user_role_name > 0) THEN
							v_nouvelle_list_role := v_nouvelle_list_role || ',' || v_role_name;
						END IF;
					END IF;
					v_pos_delimiter := INSTR (v_list_role, ',',1);
				END LOOP; -- loop while
				IF (v_list_role IS NOT NULL) THEN
					v_role_name := v_list_role;
					v_role_name := replace(v_role_name,'''','''''');
					v_number_user_role_name := 0;
					if (v_role_name IS NOT NULL) THEN
						v_query_user_role := 'select count(RO_NAME) from '||vcatalogue||'.APIC_USER_ROLE where USER_NAME = '''||v_user_name||''' and RO_NAME = '''||v_role_name||'''';
						execute immediate v_query_user_role into v_number_user_role_name;
						IF (v_number_user_role_name > 0) THEN
							v_nouvelle_list_role := v_nouvelle_list_role || ',' || v_role_name;
						END IF;
					END IF;
				END IF;
				v_length_list_role := dbms_lob.getlength(v_nouvelle_list_role);
				IF (v_length_list_role > 0) THEN
					v_nouvelle_list_role := dbms_lob.substr(v_nouvelle_list_role, v_length_list_role-1, 2);
				END IF;
				v_nouvelle_list_role_clob := v_nouvelle_list_role;
				v_query_update_ctx_user_role := 'update '||vcatalogue||'.STCA_PARAM set PA_DATA = :1, PA_DATE_MOD =  sysdate where USR_LOGIN_NAME='''||v_user_name||''' and PA_TYPE = ''APIC_CTX_USER_ROLE'' and PA_IDENT = '||v_param_id||' ';
				execute immediate v_query_update_ctx_user_role using v_nouvelle_list_role_clob;
			END LOOP; -- end loop 2
			
		END LOOP; -- end loop 1
	END;
	
	----------------------------------------------------------------------------------
	-- case 2 : SI l'utilisateur est en mode 'pas de choix du role'
	----------------------------------------------------------------------------------
	BEGIN
		v_query:= 'select USER_NAME from '||vcatalogue||'.APIC_USER where ROLE_USAGE=''2'' ';
		
		OPEN cur_user FOR v_query;
		LOOP  -- loop 1
		FETCH cur_user INTO v_user_name;
		EXIT WHEN cur_user%NOTFOUND;
			v_nouvelle_list_role_clob := NULL;
			v_length_list_role := 0;
			v_nouvelle_list_role := '';
			v_user_name := replace(v_user_name,'''','''''');
			v_query_user_role := 'select RO_NAME from '||vcatalogue||'.APIC_USER_ROLE where USER_NAME='''||v_user_name||''' ';
			OPEN cur_user_role FOR v_query_user_role;
			LOOP -- loop 2
			FETCH cur_user_role INTO v_role_name;
			EXIT WHEN cur_user_role%NOTFOUND;
				v_role_name := replace(v_role_name,'''','''''');
				v_nouvelle_list_role := v_nouvelle_list_role || ',' || v_role_name;			
			END LOOP; -- end loop 2		
			v_length_list_role := dbms_lob.getlength(v_nouvelle_list_role);
			IF (v_length_list_role > 0) THEN
				v_nouvelle_list_role := dbms_lob.substr(v_nouvelle_list_role, v_length_list_role-1, 2);
				v_nouvelle_list_role_clob := v_nouvelle_list_role;
				v_query_update_ctx_user_role := 'update '||vcatalogue||'.STCA_PARAM set PA_DATA = :1, PA_DATE_MOD =  sysdate where USR_LOGIN_NAME='''||v_user_name||''' and PA_TYPE = ''APIC_CTX_USER_ROLE'' ';
				execute immediate v_query_update_ctx_user_role using v_nouvelle_list_role_clob;
			END IF;
				
		END LOOP; -- end loop 1	
	END;

	DBMS_OUTPUT.PUT_LINE('Mise en cohérence des contextes utilisateurs par rapport aux roles');
commit;
end;
/