DECLARE
  user_name VARCHAR2(50) := '&nom_utilisateur';
  ctx_name VARCHAR2(50) := '&nom_contexte';
  temp VARCHAR2(250);
  
BEGIN
  
  delete from psudcat.STCA_ETAT_USER where ctx_ident=
  (select pa_ident from psudcat.stca_param where pa_type='APIC_CTX_CONTEXT' and usr_login_name=user_name and pa_name=ctx_name);
  commit;

  delete from psudcat.STCA_ETAT_USER where pa_ident in
  (select pa_ident from psudcat.stca_param where ctx_ident=
  (select pa_ident from psudcat.stca_param where pa_type='APIC_CTX_CONTEXT' and usr_login_name=user_name and pa_name=ctx_name));
  commit;

  delete from psudcat.STCA_PA_NAME where pa_ident in
  (select pa_ident from psudcat.stca_param where ctx_ident=
  (select pa_ident from psudcat.stca_param where pa_type='APIC_CTX_CONTEXT' and usr_login_name=user_name and pa_name=ctx_name));
  commit;

  delete from psudcat.stca_param where pa_ident in
  (select pa_ident from psudcat.stca_param where ctx_ident=
  (select pa_ident from psudcat.stca_param where pa_type='APIC_CTX_CONTEXT' and usr_login_name=user_name and pa_name=ctx_name));
  commit;

  delete from psudcat.stca_param where ctx_ident=
  (select pa_ident from psudcat.stca_param where pa_type='APIC_CTX_CONTEXT' and usr_login_name=user_name and pa_name=ctx_name);
  commit;
  
  delete from psudcat.stca_param where pa_type='APIC_CTX_CONTEXT' and usr_login_name=user_name and pa_name=ctx_name;
  commit;

END;
/