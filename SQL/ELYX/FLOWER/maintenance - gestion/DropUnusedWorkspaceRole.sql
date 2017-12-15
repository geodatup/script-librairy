----------------------------------------------------------------------------------------------------------------
-- Script utilitaire permettant de supprimer les rôles d'accès aux workspaces ETL quand ceux-ci n'existent plus.
----------------------------------------------------------------------------------------------------------------
connect sys/pwd@cnx as sysdba;
----------------------------------------------------------------------------------------------------------------
DECLARE   
  role_fw_access varchar2(100);
  workspace varchar2(100);
  sql_stmt varchar2(1000);  
  TYPE CurCount IS REF CURSOR;
  cur_count CurCount;
  nb_workspace integer;  
  cursor cur_fw_access IS SELECT DISTINCT GRANTED_ROLE FROM dba_role_privs WHERE GRANTED_ROLE LIKE ('FW_ACCESS%'); 
BEGIN
  --DBMS_OUTPUT.ENABLE;
  -- Récupération de tous les rôles d'accès à des workspace ETL
  OPEN cur_fw_access;
  LOOP
    FETCH cur_fw_access INTO role_fw_access;
    if cur_fw_access%NOTFOUND then
      EXIT;
    end if;
    workspace := substr(role_fw_access, 11);
    --DBMS_OUTPUT.PUT_LINE('Role ' || role_fw_access || ' (workspace=' || workspace || ')');    

    -- On vérifie que le rôle correspond à un workspace encore existant
    sql_stmt := 'SELECT COUNT(*) FROM ALL_WORKSPACES WHERE WORKSPACE = ''' ||  workspace || '''';
    OPEN cur_count FOR sql_stmt;
    FETCH cur_count INTO nb_workspace;
    if (nb_workspace = 0) then
      --DBMS_OUTPUT.PUT_LINE('Le workspace (' || workspace || ') n existe plus, on supprime le role (' || role_fw_access || ')');
      execute immediate 'DROP ROLE ' || role_fw_access;
    end if;
  END LOOP;
END;
/
COMMIT;
----------------------------------------------------------------------------------------------------------------