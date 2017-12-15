------------------------------------------------------------------------------------------------------------------
 --	Traitement r�alis� :																						--
 -- Pour un catalogue et <nom_de_base_catalogue> donn�s															--
 --		1/ Cr�ation du r�le <nom_de_base_catalogue>_APIC_CONSULT si ce r�le n'existe pas!						--
 -- 	2/ Affectation de ce r�le � tous les utilisateurs ELYX									  				--
 --  																											--
 -- Remark : ce script devra �tre mis � jour s'il y a des modifications du catalogue(table, s�quence...)  		--
------------------------------------------------------------------------------------------------------------------

SET SERVEROUTPUT ON
declare
	 -- Catalogue de la base Elyx (XXX_CAT)
	vcatalog varchar2(50):='&1';
	 -- sch�ma donn�es de la base ELYX (XXX_DAT)
	vdata    varchar2(50):='&2';	
	-- nom du r�le au format <nom_de_base_Elyx>_APIC_CONSULT
	-- Attention : il faut ABSOLUMENT que ce nom corresponde au nom d�clar� 
	-- dans le fichier de configuration ElyxManagerConfig.xml (�tiquette 'role_model_consult')
	-- en y ajoutant le prefix 'nom_de_base_Elyx'
	
	vrole      varchar2(50):='&3';
	
	luser varchar2(80);
	v_query VARCHAR2(500);
	v_user_name VARCHAR2(80);
	-- D�claration d'un curseur dynamique
	 TYPE CurClass IS REF CURSOR;
	cur_user CurClass;
	
	
begin 
     -- sauvegarde des utilisateurs associ�s au role BASE_BDR_DDL_APIC_CONSULT
    begin
      execute immediate 'call APICADM.OUTILS_APIC_ADMIN.SaveGrantee_role ('''||vrole||''')';
      exception
      when others then
      null;
    end;  
	begin	
       execute immediate 'drop role '||vrole||'';
       exception
      when others then
      null;
    end;
	
	begin
      execute immediate 'create role '||vrole||' not identified';
      exception
      when others then
      null;
    end;
	
	begin
		select user into luser from dual;
		execute immediate 'revoke '||vrole||' from '||luser;
	end;
	
	-- privil�ges pour le sch�ma de l'instance APICADM
	begin
	execute immediate 'grant select on APICADM.APIC_BD_CATALOG to '||vrole||'';
		exception
		when others then
		null;
	end;
	-- privil�ges pour le sch�ma donn�es
	begin
	execute immediate 'grant select on '||vdata||'.APIC_CLASS to '||vrole||'';
		exception
		when others then
		null;	
	end;
	begin
	execute immediate 'grant select on '||vdata||'.APIC_TRANSACTION to '||vrole||'';
		exception
		when others then
		null;
	end;
	-- privil�ges pour le sch�ma du catalogue
	begin
	execute immediate 'grant select on '||vcatalog||'.APIC_BASE to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.APIC_CLASS_MCD to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.STCA_ROLE to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.APIC_USER to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.APIC_USER_ROLE to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.STCA_PRODUCT to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,insert,delete,update on '||vcatalog||'.STCA_PUBLICATION to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.STCA_PA_TYPE to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,insert,delete,update on '||vcatalog||'.STCA_PARAM to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.STCA_PAT_PRO to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,insert,delete,update on '||vcatalog||'.STCA_RO_PA to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,insert,delete,update on '||vcatalog||'.STCA_ETAT_USER to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.STCA_ETAT_ROLE to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.ELYX_PARAM_CHANGE to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select on '||vcatalog||'.PARAM_SEQ_ID to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,alter on '||vcatalog||'.SEQ_SYMBOL_LINE_EXPL to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,alter on '||vcatalog||'.SEQ_SYMBOL_FILL_EXPL to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,alter on '||vcatalog||'.SEQ_SYMBOL_TEXT_EXPL to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,alter on '||vcatalog||'.SEQ_SYMBOL_MARK_EXPL to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,alter on '||vcatalog||'.SEQ_SYMBOL_LINE_ADM to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,alter on '||vcatalog||'.SEQ_SYMBOL_FILL_ADM to '||vrole||'';	
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,alter on '||vcatalog||'.SEQ_SYMBOL_TEXT_ADM to '||vrole||'';
		exception
		when others then
		null;
	end;
	begin
	execute immediate 'grant select,alter on '||vcatalog||'.SEQ_SYMBOL_MARK_ADM to '||vrole||'';
		exception
		when others then
		null;
	end;
	
	
	-- on redonne le r�le aux utilisateurs sauvegard�s
	begin
		execute immediate 'call APICADM.OUTILS_APIC_ADMIN.GrantSavedGrantee_role ('''||vrole||''')';
		exception
			when others then
		null;
	end;
	
	v_query:= 'select USER_NAME from '||vcatalog||'.APIC_USER ';
	OPEN cur_user FOR v_query; 
	LOOP 
	FETCH cur_user INTO v_user_name;
	EXIT WHEN cur_user%NOTFOUND;
		v_user_name := replace(v_user_name,'''','''''');
		execute immediate 'grant '||vrole||' to '||v_user_name||'';
	
	END LOOP;
	
commit;
end;
/