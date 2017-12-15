
-- sauvegarde des utilisateurs associés au role DPM_APIC_CONSULT

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.SaveGrantee_role (''DPM_APIC_CONSULT'')';
  exception
    when others then
    null;
end;
/
begin
  execute immediate 'drop role DPM_APIC_CONSULT';
  exception
    when others then
    null;
end;
/
create role DPM_APIC_CONSULT not identified;
declare
  luser varchar2(80);
begin
  select user into luser from dual;
  execute immediate 'revoke DPM_APIC_CONSULT from '||luser;
end;
/

-- privilèges pour le schéma de l'instance APICADM

grant select on APICADM.APIC_BD_CATALOG to DPM_APIC_CONSULT;

-- privilèges pour le schéma de la base PSUDDAT

grant select on PSUDDAT.APIC_CLASS to DPM_APIC_CONSULT;

-- privilèges pour le schéma du modèle MODPSUDCAT

grant select on MODPSUDCAT.APIC_BASE to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.APIC_CLASS_MCD to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.STCA_ROLE to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.APIC_USER to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.APIC_USER_ROLE to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.STCA_PRODUCT to DPM_APIC_CONSULT;
grant select,insert,delete,update on MODPSUDCAT.STCA_PUBLICATION to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.STCA_PA_TYPE to DPM_APIC_CONSULT;
grant select,insert,delete,update on MODPSUDCAT.STCA_PARAM to DPM_APIC_CONSULT;
grant select,insert,delete,update on MODPSUDCAT.STCA_PA_NAME to DPM_APIC_CONSULT;
grant select,insert,delete,update on MODPSUDCAT.STCA_BINARY_PARAM to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.STCA_PAT_PRO to DPM_APIC_CONSULT;
grant select,insert,delete,update on MODPSUDCAT.STCA_RO_PA to DPM_APIC_CONSULT;
grant select,insert,delete,update on MODPSUDCAT.STCA_ETAT_USER to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.STCA_ETAT_ROLE to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.PARAM_SEQ_ID to DPM_APIC_CONSULT;
grant select on MODPSUDCAT.PUBLI_SEQ_ID to DPM_APIC_CONSULT;

-- on redonne le rôle DPM_APIC_CONSULT aux utilisateurs sauvegardés

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.GrantSavedGrantee_role (''DPM_APIC_CONSULT'')';
  exception
    when others then
    null;
end;
/


commit;

