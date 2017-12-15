-- Script permettant de donner les droits d'utilisation de FLOWER (accès restreint) à un utilisateur APIC --

declare

	vuser varchar2(50):='nomUtilisateur'; --nom de l'utilisateur

begin

-----------------------------------------------------------------------
-- Declaration d'un utilisateur simple de Flower
-----------------------------------------------------------------------

	execute immediate 'GRANT CONNECT,FW_USER TO '||vuser;

end;
/