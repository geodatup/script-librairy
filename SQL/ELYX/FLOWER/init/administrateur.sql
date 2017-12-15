-- Script permettant de donner les droits d'aministration de FLOWER à un utilisateur APIC --
declare

	vuser varchar2(50):='nomUtilisateur'; --nom de l'utilisateur

begin

-----------------------------------------------------------------------
-- Declaration de l'administrateur de Flower
-----------------------------------------------------------------------

	execute immediate 'GRANT CONNECT,FW_ADMIN TO '||vuser;

end;
/