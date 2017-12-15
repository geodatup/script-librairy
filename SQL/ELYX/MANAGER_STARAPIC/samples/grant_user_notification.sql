SET SERVEROUTPUT ON
declare
  -- Catalogue de la base Elyx (CAT_XXX)
  vcatalogue varchar2(50):='&2';
  -- Utilisateur indiqué dans la chaine de connexion des kernels pour Elyx Server
  vuserElyxServer varchar2(50):='&5';

begin
    execute immediate 'grant select,insert,delete,update on '||vcatalogue||'.ELYX_PARAM_CHANGE to '||vuserElyxServer;
    execute immediate 'grant select on '||vcatalogue||'.PARAM_CHANGE_SEQ_ID to '||vuserElyxServer;
    execute immediate 'grant CHANGE NOTIFICATION to '||vuserElyxServer;

    exception
      when others then
      DBMS_OUTPUT.PUT_LINE('Erreur: ORA'||sqlcode);
      DBMS_OUTPUT.PUT_LINE(DBMS_UTILITY.FORMAT_ERROR_STACK());
      return;
end;
/