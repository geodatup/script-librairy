
-- sauvegarde des utilisateurs associés au role DPM_CARTO

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.SaveGrantee_role (''DPM_CARTO'')';
  exception
    when others then
    null;
end;
/
begin
  execute immediate 'drop role DPM_CARTO';
  exception
    when others then
    null;
end;
/
create role DPM_CARTO not identified;
declare
  luser varchar2(80);
begin
  select user into luser from dual;
  execute immediate 'revoke DPM_CARTO from '||luser;
end;
/

-- privilèges pour le schéma de l'instance APICADM

grant select on APICADM.APIC_BD_CATALOG to DPM_CARTO;

-- privilèges pour le schéma du modèle PSUDCAT

grant select on PSUDCAT.APIC_BASE to DPM_CARTO;
grant select on PSUDCAT.APIC_CLASS_MCD to DPM_CARTO;
grant select on PSUDCAT.STCA_ROLE to DPM_CARTO;
grant select on PSUDCAT.APIC_USER to DPM_CARTO;
grant select on PSUDCAT.APIC_USER_ROLE to DPM_CARTO;
grant select on PSUDCAT.STCA_PRODUCT to DPM_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_PUBLICATION to DPM_CARTO;
grant select on PSUDCAT.STCA_PA_TYPE to DPM_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_PARAM to DPM_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_PA_NAME to DPM_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_BINARY_PARAM to DPM_CARTO;
grant select on PSUDCAT.STCA_PAT_PRO to DPM_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_RO_PA to DPM_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_ETAT_USER to DPM_CARTO;
grant select on PSUDCAT.STCA_ETAT_ROLE to DPM_CARTO;
grant select on PSUDCAT.PARAM_SEQ_ID to DPM_CARTO;
grant select on PSUDCAT.PUBLI_SEQ_ID to DPM_CARTO;

-- privilèges pour le schéma de la base PSUDDAT

grant select,insert,delete,update on PSUDDAT.APIC_CLASS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.APIC_STATE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.APIC_HIERARCH to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.APIC_TRANSACTION to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.APIC_SCHEMA to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.APIC_SCHEMA_RELATION to DPM_CARTO;
grant select on PSUDDAT.SEQ_APIC_TRANSACTION to DPM_CARTO;
grant select on PSUDDAT.APIC_SCHEMA_SEQ to DPM_CARTO;

-- privilèges sur la table ARBRE

grant select,insert,delete,update on PSUDDAT.ARBRE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ARBRE_AR to DPM_CARTO;
grant select on PSUDDAT.ARBRE_SEQ to DPM_CARTO;

-- privilèges sur la table PLANTALI

grant select,insert,delete,update on PSUDDAT.PLANTALI to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PLANTALI_AR to DPM_CARTO;
grant select on PSUDDAT.PLANTALI_SEQ to DPM_CARTO;

-- privilèges sur la table PREMVEG

grant select,insert,delete,update on PSUDDAT.PREMVEG to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PREMVEG_AR to DPM_CARTO;
grant select on PSUDDAT.PREMVEG_SEQ to DPM_CARTO;

-- privilèges sur la table SURFVEGE

grant select,insert,delete,update on PSUDDAT.SURFVEGE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.SURFVEGE_AR to DPM_CARTO;
grant select on PSUDDAT.SURFVEGE_SEQ to DPM_CARTO;

-- privilèges sur la table CENTPARC

grant select on PSUDDAT.CENTPARC to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CENTPARC_AR to DPM_CARTO;

-- privilèges sur la table FACE

grant select on PSUDDAT.FACE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FACE_AR to DPM_CARTO;

-- privilèges sur la table FILOT

grant select on PSUDDAT.FILOT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FILOT_AR to DPM_CARTO;

-- privilèges sur la table FLOCA

grant select on PSUDDAT.FLOCA to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FLOCA_AR to DPM_CARTO;

-- privilèges sur la table FLUV

grant select on PSUDDAT.FLUV to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FLUV_AR to DPM_CARTO;

-- privilèges sur la table FMAR

grant select on PSUDDAT.FMAR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FMAR_AR to DPM_CARTO;

-- privilèges sur la table FPROJ

grant select on PSUDDAT.FPROJ to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FPROJ_AR to DPM_CARTO;

-- privilèges sur la table FREPST

grant select on PSUDDAT.FREPST to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FREPST_AR to DPM_CARTO;

-- privilèges sur la table FRESER

grant select on PSUDDAT.FRESER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FRESER_AR to DPM_CARTO;

-- privilèges sur la table FSERV

grant select on PSUDDAT.FSERV to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FSERV_AR to DPM_CARTO;

-- privilèges sur la table FVOIE

grant select on PSUDDAT.FVOIE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FVOIE_AR to DPM_CARTO;

-- privilèges sur la table PARCELLE

grant select on PSUDDAT.PARCELLE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PARCELLE_AR to DPM_CARTO;

-- privilèges sur la table PARCPROV

grant select on PSUDDAT.PARCPROV to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PARCPROV_AR to DPM_CARTO;

-- privilèges sur la table QUARTIER

grant select on PSUDDAT.QUARTIER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.QUARTIER_AR to DPM_CARTO;

-- privilèges sur la table SOMPAR

grant select on PSUDDAT.SOMPAR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.SOMPAR_AR to DPM_CARTO;

-- privilèges sur la table COMMUNE

grant select on PSUDDAT.COMMUNE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.COMMUNE_AR to DPM_CARTO;

-- privilèges sur la table PARCELLE_T

grant select on PSUDDAT.PARCELLE_T to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PARCELLE_T_AR to DPM_CARTO;

-- privilèges sur la table FICHEINFRA

grant select on PSUDDAT.FICHEINFRA to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FICHEINFRA_AR to DPM_CARTO;

-- privilèges sur la table GEOD

grant select on PSUDDAT.GEOD to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.GEOD_AR to DPM_CARTO;

-- privilèges sur la table GEOREP

grant select on PSUDDAT.GEOREP to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.GEOREP_AR to DPM_CARTO;

-- privilèges sur la table GNIREP

grant select on PSUDDAT.GNIREP to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.GNIREP_AR to DPM_CARTO;

-- privilèges sur la table GNIV

grant select on PSUDDAT.GNIV to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.GNIV_AR to DPM_CARTO;

-- privilèges sur la table GPOL

grant select on PSUDDAT.GPOL to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.GPOL_AR to DPM_CARTO;

-- privilèges sur la table GPOREP

grant select on PSUDDAT.GPOREP to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.GPOREP_AR to DPM_CARTO;

-- privilèges sur la table HINFRA

grant select on PSUDDAT.HINFRA to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.HINFRA_AR to DPM_CARTO;

-- privilèges sur la table TEXTEINFRA

grant select on PSUDDAT.TEXTEINFRA to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TEXTEINFRA_AR to DPM_CARTO;

-- privilèges sur la table ANTENNE

grant select,insert,delete,update on PSUDDAT.ANTENNE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ANTENNE_AR to DPM_CARTO;
grant select on PSUDDAT.ANTENNE_SEQ to DPM_CARTO;

-- privilèges sur la table BALIAERO

grant select,insert,delete,update on PSUDDAT.BALIAERO to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BALIAERO_AR to DPM_CARTO;
grant select on PSUDDAT.BALIAERO_SEQ to DPM_CARTO;

-- privilèges sur la table BATIMENT

grant select,insert,delete,update on PSUDDAT.BATIMENT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BATIMENT_AR to DPM_CARTO;
grant select on PSUDDAT.BATIMENT_SEQ to DPM_CARTO;

-- privilèges sur la table BSLETTRE

grant select,insert,delete,update on PSUDDAT.BSLETTRE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BSLETTRE_AR to DPM_CARTO;
grant select on PSUDDAT.BSLETTRE_SEQ to DPM_CARTO;

-- privilèges sur la table CIMETIER

grant select,insert,delete,update on PSUDDAT.CIMETIER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CIMETIER_AR to DPM_CARTO;
grant select on PSUDDAT.CIMETIER_SEQ to DPM_CARTO;

-- privilèges sur la table CONDUFOR

grant select,insert,delete,update on PSUDDAT.CONDUFOR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CONDUFOR_AR to DPM_CARTO;
grant select on PSUDDAT.CONDUFOR_SEQ to DPM_CARTO;

-- privilèges sur la table DEPOTOIR

grant select,insert,delete,update on PSUDDAT.DEPOTOIR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.DEPOTOIR_AR to DPM_CARTO;
grant select on PSUDDAT.DEPOTOIR_SEQ to DPM_CARTO;

-- privilèges sur la table EAUARTIF

grant select,insert,delete,update on PSUDDAT.EAUARTIF to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.EAUARTIF_AR to DPM_CARTO;
grant select on PSUDDAT.EAUARTIF_SEQ to DPM_CARTO;

-- privilèges sur la table ENROCHEMENT

grant select,insert,delete,update on PSUDDAT.ENROCHEMENT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ENROCHEMENT_AR to DPM_CARTO;
grant select on PSUDDAT.ENROCHEMENT_SEQ to DPM_CARTO;

-- privilèges sur la table EOLIENNE

grant select,insert,delete,update on PSUDDAT.EOLIENNE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.EOLIENNE_AR to DPM_CARTO;
grant select on PSUDDAT.EOLIENNE_SEQ to DPM_CARTO;

-- privilèges sur la table FACADE

grant select,insert,delete,update on PSUDDAT.FACADE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FACADE_AR to DPM_CARTO;
grant select on PSUDDAT.FACADE_SEQ to DPM_CARTO;

-- privilèges sur la table FEUSIGNA

grant select,insert,delete,update on PSUDDAT.FEUSIGNA to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FEUSIGNA_AR to DPM_CARTO;
grant select on PSUDDAT.FEUSIGNA_SEQ to DPM_CARTO;

-- privilèges sur la table H_VANNE

grant select,insert,delete,update on PSUDDAT.H_VANNE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.H_VANNE_AR to DPM_CARTO;
grant select on PSUDDAT.H_VANNE_SEQ to DPM_CARTO;

-- privilèges sur la table HELIPORT

grant select,insert,delete,update on PSUDDAT.HELIPORT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.HELIPORT_AR to DPM_CARTO;
grant select on PSUDDAT.HELIPORT_SEQ to DPM_CARTO;

-- privilèges sur la table ILOTBP

grant select,insert,delete,update on PSUDDAT.ILOTBP to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ILOTBP_AR to DPM_CARTO;
grant select on PSUDDAT.ILOTBP_SEQ to DPM_CARTO;

-- privilèges sur la table LIMSPORT

grant select,insert,delete,update on PSUDDAT.LIMSPORT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.LIMSPORT_AR to DPM_CARTO;
grant select on PSUDDAT.LIMSPORT_SEQ to DPM_CARTO;

-- privilèges sur la table LINAERO

grant select,insert,delete,update on PSUDDAT.LINAERO to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.LINAERO_AR to DPM_CARTO;
grant select on PSUDDAT.LINAERO_SEQ to DPM_CARTO;

-- privilèges sur la table MONUMENT

grant select,insert,delete,update on PSUDDAT.MONUMENT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.MONUMENT_AR to DPM_CARTO;
grant select on PSUDDAT.MONUMENT_SEQ to DPM_CARTO;

-- privilèges sur la table OUVARTLI

grant select,insert,delete,update on PSUDDAT.OUVARTLI to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.OUVARTLI_AR to DPM_CARTO;
grant select on PSUDDAT.OUVARTLI_SEQ to DPM_CARTO;

-- privilèges sur la table OUVRDART

grant select,insert,delete,update on PSUDDAT.OUVRDART to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.OUVRDART_AR to DPM_CARTO;
grant select on PSUDDAT.OUVRDART_SEQ to DPM_CARTO;

-- privilèges sur la table PIPELINE

grant select,insert,delete,update on PSUDDAT.PIPELINE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PIPELINE_AR to DPM_CARTO;
grant select on PSUDDAT.PIPELINE_SEQ to DPM_CARTO;

-- privilèges sur la table PISBOEUF

grant select,insert,delete,update on PSUDDAT.PISBOEUF to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PISBOEUF_AR to DPM_CARTO;
grant select on PSUDDAT.PISBOEUF_SEQ to DPM_CARTO;

-- privilèges sur la table PISCINE

grant select,insert,delete,update on PSUDDAT.PISCINE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PISCINE_AR to DPM_CARTO;
grant select on PSUDDAT.PISCINE_SEQ to DPM_CARTO;

-- privilèges sur la table PISTAERO

grant select,insert,delete,update on PSUDDAT.PISTAERO to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PISTAERO_AR to DPM_CARTO;
grant select on PSUDDAT.PISTAERO_SEQ to DPM_CARTO;

-- privilèges sur la table PORTDRAP

grant select,insert,delete,update on PSUDDAT.PORTDRAP to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PORTDRAP_AR to DPM_CARTO;
grant select on PSUDDAT.PORTDRAP_SEQ to DPM_CARTO;

-- privilèges sur la table POTOBATI

grant select,insert,delete,update on PSUDDAT.POTOBATI to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.POTOBATI_AR to DPM_CARTO;
grant select on PSUDDAT.POTOBATI_SEQ to DPM_CARTO;

-- privilèges sur la table RESERHYD

grant select,insert,delete,update on PSUDDAT.RESERHYD to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.RESERHYD_AR to DPM_CARTO;
grant select on PSUDDAT.RESERHYD_SEQ to DPM_CARTO;

-- privilèges sur la table RUINE

grant select,insert,delete,update on PSUDDAT.RUINE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.RUINE_AR to DPM_CARTO;
grant select on PSUDDAT.RUINE_SEQ to DPM_CARTO;

-- privilèges sur la table SOUTENEMENT

grant select,insert,delete,update on PSUDDAT.SOUTENEMENT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.SOUTENEMENT_AR to DPM_CARTO;
grant select on PSUDDAT.SOUTENEMENT_SEQ to DPM_CARTO;

-- privilèges sur la table STAMETEO

grant select,insert,delete,update on PSUDDAT.STAMETEO to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.STAMETEO_AR to DPM_CARTO;
grant select on PSUDDAT.STAMETEO_SEQ to DPM_CARTO;

-- privilèges sur la table STATUE

grant select,insert,delete,update on PSUDDAT.STATUE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.STATUE_AR to DPM_CARTO;
grant select on PSUDDAT.STATUE_SEQ to DPM_CARTO;

-- privilèges sur la table STOCKEAU

grant select,insert,delete,update on PSUDDAT.STOCKEAU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.STOCKEAU_AR to DPM_CARTO;
grant select on PSUDDAT.STOCKEAU_SEQ to DPM_CARTO;

-- privilèges sur la table STOCKMIN

grant select,insert,delete,update on PSUDDAT.STOCKMIN to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.STOCKMIN_AR to DPM_CARTO;
grant select on PSUDDAT.STOCKMIN_SEQ to DPM_CARTO;

-- privilèges sur la table TOMBE

grant select,insert,delete,update on PSUDDAT.TOMBE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TOMBE_AR to DPM_CARTO;
grant select on PSUDDAT.TOMBE_SEQ to DPM_CARTO;

-- privilèges sur la table TRANSMIN

grant select,insert,delete,update on PSUDDAT.TRANSMIN to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TRANSMIN_AR to DPM_CARTO;
grant select on PSUDDAT.TRANSMIN_SEQ to DPM_CARTO;

-- privilèges sur la table TSPORTS

grant select,insert,delete,update on PSUDDAT.TSPORTS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TSPORTS_AR to DPM_CARTO;
grant select on PSUDDAT.TSPORTS_SEQ to DPM_CARTO;

-- privilèges sur la table UNITEPROD

grant select,insert,delete,update on PSUDDAT.UNITEPROD to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.UNITEPROD_AR to DPM_CARTO;
grant select on PSUDDAT.UNITEPROD_SEQ to DPM_CARTO;

-- privilèges sur la table ABRIBUS

grant select,insert,delete,update on PSUDDAT.ABRIBUS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ABRIBUS_AR to DPM_CARTO;
grant select on PSUDDAT.ABRIBUS_SEQ to DPM_CARTO;

-- privilèges sur la table AIRESTAT

grant select,insert,delete,update on PSUDDAT.AIRESTAT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.AIRESTAT_AR to DPM_CARTO;
grant select on PSUDDAT.AIRESTAT_SEQ to DPM_CARTO;

-- privilèges sur la table ALPIETAM

grant select,insert,delete,update on PSUDDAT.ALPIETAM to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ALPIETAM_AR to DPM_CARTO;
grant select on PSUDDAT.ALPIETAM_SEQ to DPM_CARTO;

-- privilèges sur la table ARCEAU

grant select,insert,delete,update on PSUDDAT.ARCEAU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ARCEAU_AR to DPM_CARTO;
grant select on PSUDDAT.ARCEAU_SEQ to DPM_CARTO;

-- privilèges sur la table BALISVOI

grant select,insert,delete,update on PSUDDAT.BALISVOI to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BALISVOI_AR to DPM_CARTO;
grant select on PSUDDAT.BALISVOI_SEQ to DPM_CARTO;

-- privilèges sur la table BANC

grant select,insert,delete,update on PSUDDAT.BANC to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BANC_AR to DPM_CARTO;
grant select on PSUDDAT.BANC_SEQ to DPM_CARTO;

-- privilèges sur la table BLOCSAN

grant select,insert,delete,update on PSUDDAT.BLOCSAN to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BLOCSAN_AR to DPM_CARTO;
grant select on PSUDDAT.BLOCSAN_SEQ to DPM_CARTO;

-- privilèges sur la table BORDTROT

grant select,insert,delete,update on PSUDDAT.BORDTROT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BORDTROT_AR to DPM_CARTO;
grant select on PSUDDAT.BORDTROT_SEQ to DPM_CARTO;

-- privilèges sur la table BORNANTI

grant select,insert,delete,update on PSUDDAT.BORNANTI to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BORNANTI_AR to DPM_CARTO;
grant select on PSUDDAT.BORNANTI_SEQ to DPM_CARTO;

-- privilèges sur la table BORNELUM

grant select,insert,delete,update on PSUDDAT.BORNELUM to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BORNELUM_AR to DPM_CARTO;
grant select on PSUDDAT.BORNELUM_SEQ to DPM_CARTO;

-- privilèges sur la table BORNRP

grant select,insert,delete,update on PSUDDAT.BORNRP to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BORNRP_AR to DPM_CARTO;
grant select on PSUDDAT.BORNRP_SEQ to DPM_CARTO;

-- privilèges sur la table CAPTEUR

grant select,insert,delete,update on PSUDDAT.CAPTEUR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CAPTEUR_AR to DPM_CARTO;
grant select on PSUDDAT.CAPTEUR_SEQ to DPM_CARTO;

-- privilèges sur la table DRAINACC

grant select,insert,delete,update on PSUDDAT.DRAINACC to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.DRAINACC_AR to DPM_CARTO;
grant select on PSUDDAT.DRAINACC_SEQ to DPM_CARTO;

-- privilèges sur la table ENTCHAR

grant select,insert,delete,update on PSUDDAT.ENTCHAR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ENTCHAR_AR to DPM_CARTO;
grant select on PSUDDAT.ENTCHAR_SEQ to DPM_CARTO;

-- privilèges sur la table FEUX

grant select,insert,delete,update on PSUDDAT.FEUX to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FEUX_AR to DPM_CARTO;
grant select on PSUDDAT.FEUX_SEQ to DPM_CARTO;

-- privilèges sur la table FLECPEIN

grant select,insert,delete,update on PSUDDAT.FLECPEIN to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FLECPEIN_AR to DPM_CARTO;
grant select on PSUDDAT.FLECPEIN_SEQ to DPM_CARTO;

-- privilèges sur la table GLISSECU

grant select,insert,delete,update on PSUDDAT.GLISSECU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.GLISSECU_AR to DPM_CARTO;
grant select on PSUDDAT.GLISSECU_SEQ to DPM_CARTO;

-- privilèges sur la table GUE

grant select,insert,delete,update on PSUDDAT.GUE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.GUE_AR to DPM_CARTO;
grant select on PSUDDAT.GUE_SEQ to DPM_CARTO;

-- privilèges sur la table HORODATE

grant select,insert,delete,update on PSUDDAT.HORODATE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.HORODATE_AR to DPM_CARTO;
grant select on PSUDDAT.HORODATE_SEQ to DPM_CARTO;

-- privilèges sur la table PANNEAU

grant select,insert,delete,update on PSUDDAT.PANNEAU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PANNEAU_AR to DPM_CARTO;
grant select on PSUDDAT.PANNEAU_SEQ to DPM_CARTO;

-- privilèges sur la table PANOPUB

grant select,insert,delete,update on PSUDDAT.PANOPUB to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PANOPUB_AR to DPM_CARTO;
grant select on PSUDDAT.PANOPUB_SEQ to DPM_CARTO;

-- privilèges sur la table PASSEREL

grant select,insert,delete,update on PSUDDAT.PASSEREL to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PASSEREL_AR to DPM_CARTO;
grant select on PSUDDAT.PASSEREL_SEQ to DPM_CARTO;

-- privilèges sur la table PASSPIET

grant select,insert,delete,update on PSUDDAT.PASSPIET to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PASSPIET_AR to DPM_CARTO;
grant select on PSUDDAT.PASSPIET_SEQ to DPM_CARTO;

-- privilèges sur la table POUBELLE

grant select,insert,delete,update on PSUDDAT.POUBELLE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.POUBELLE_AR to DPM_CARTO;
grant select on PSUDDAT.POUBELLE_SEQ to DPM_CARTO;

-- privilèges sur la table RALENTIS

grant select,insert,delete,update on PSUDDAT.RALENTIS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.RALENTIS_AR to DPM_CARTO;
grant select on PSUDDAT.RALENTIS_SEQ to DPM_CARTO;

-- privilèges sur la table SENTIER

grant select,insert,delete,update on PSUDDAT.SENTIER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.SENTIER_AR to DPM_CARTO;
grant select on PSUDDAT.SENTIER_SEQ to DPM_CARTO;

-- privilèges sur la table SIGARMOI

grant select,insert,delete,update on PSUDDAT.SIGARMOI to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.SIGARMOI_AR to DPM_CARTO;
grant select on PSUDDAT.SIGARMOI_SEQ to DPM_CARTO;

-- privilèges sur la table SIGNHOR

grant select,insert,delete,update on PSUDDAT.SIGNHOR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.SIGNHOR_AR to DPM_CARTO;
grant select on PSUDDAT.SIGNHOR_SEQ to DPM_CARTO;

-- privilèges sur la table TEXTPEIN

grant select,insert,delete,update on PSUDDAT.TEXTPEIN to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TEXTPEIN_AR to DPM_CARTO;
grant select on PSUDDAT.TEXTPEIN_SEQ to DPM_CARTO;

-- privilèges sur la table VOIACCES

grant select,insert,delete,update on PSUDDAT.VOIACCES to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.VOIACCES_AR to DPM_CARTO;
grant select on PSUDDAT.VOIACCES_SEQ to DPM_CARTO;

-- privilèges sur la table ZEBRA

grant select,insert,delete,update on PSUDDAT.ZEBRA to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ZEBRA_AR to DPM_CARTO;
grant select on PSUDDAT.ZEBRA_SEQ to DPM_CARTO;

-- privilèges sur la table ZONARBUS

grant select,insert,delete,update on PSUDDAT.ZONARBUS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ZONARBUS_AR to DPM_CARTO;
grant select on PSUDDAT.ZONARBUS_SEQ to DPM_CARTO;

-- privilèges sur la table PLATFORM

grant select,insert,delete,update on PSUDDAT.PLATFORM to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PLATFORM_AR to DPM_CARTO;
grant select on PSUDDAT.PLATFORM_SEQ to DPM_CARTO;

-- privilèges sur la table BORNEURG

grant select,insert,delete,update on PSUDDAT.BORNEURG to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BORNEURG_AR to DPM_CARTO;
grant select on PSUDDAT.BORNEURG_SEQ to DPM_CARTO;

-- privilèges sur la table CAMSURV

grant select,insert,delete,update on PSUDDAT.CAMSURV to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CAMSURV_AR to DPM_CARTO;
grant select on PSUDDAT.CAMSURV_SEQ to DPM_CARTO;

-- privilèges sur la table PTCYCL

grant select,insert,delete,update on PSUDDAT.PTCYCL to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PTCYCL_AR to DPM_CARTO;
grant select on PSUDDAT.PTCYCL_SEQ to DPM_CARTO;

-- privilèges sur la table META_DITTT

grant select,insert,delete,update on PSUDDAT.META_DITTT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.META_DITTT_AR to DPM_CARTO;
grant select on PSUDDAT.META_DITTT_SEQ to DPM_CARTO;

-- privilèges sur la table P10000

grant select,insert,delete,update on PSUDDAT.P10000 to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.P10000_AR to DPM_CARTO;
grant select on PSUDDAT.P10000_SEQ to DPM_CARTO;

-- privilèges sur la table P12500

grant select,insert,delete,update on PSUDDAT.P12500 to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.P12500_AR to DPM_CARTO;
grant select on PSUDDAT.P12500_SEQ to DPM_CARTO;

-- privilèges sur la table P2000

grant select,insert,delete,update on PSUDDAT.P2000 to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.P2000_AR to DPM_CARTO;
grant select on PSUDDAT.P2000_SEQ to DPM_CARTO;

-- privilèges sur la table P500

grant select,insert,delete,update on PSUDDAT.P500 to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.P500_AR to DPM_CARTO;
grant select on PSUDDAT.P500_SEQ to DPM_CARTO;

-- privilèges sur la table P50000

grant select,insert,delete,update on PSUDDAT.P50000 to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.P50000_AR to DPM_CARTO;
grant select on PSUDDAT.P50000_SEQ to DPM_CARTO;

-- privilèges sur la table A_AXECOU

grant select,insert,delete,update on PSUDDAT.A_AXECOU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.A_AXECOU_AR to DPM_CARTO;
grant select on PSUDDAT.A_AXECOU_SEQ to DPM_CARTO;

-- privilèges sur la table A_AXEFOS

grant select,insert,delete,update on PSUDDAT.A_AXEFOS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.A_AXEFOS_AR to DPM_CARTO;
grant select on PSUDDAT.A_AXEFOS_SEQ to DPM_CARTO;

-- privilèges sur la table A_BASVER

grant select,insert,delete,update on PSUDDAT.A_BASVER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.A_BASVER_AR to DPM_CARTO;
grant select on PSUDDAT.A_BASVER_SEQ to DPM_CARTO;

-- privilèges sur la table A_CANIV

grant select,insert,delete,update on PSUDDAT.A_CANIV to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.A_CANIV_AR to DPM_CARTO;
grant select on PSUDDAT.A_CANIV_SEQ to DPM_CARTO;

-- privilèges sur la table A_GRISUR

grant select,insert,delete,update on PSUDDAT.A_GRISUR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.A_GRISUR_AR to DPM_CARTO;
grant select on PSUDDAT.A_GRISUR_SEQ to DPM_CARTO;

-- privilèges sur la table A_PURGE

grant select,insert,delete,update on PSUDDAT.A_PURGE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.A_PURGE_AR to DPM_CARTO;
grant select on PSUDDAT.A_PURGE_SEQ to DPM_CARTO;

-- privilèges sur la table A_RACCORD

grant select,insert,delete,update on PSUDDAT.A_RACCORD to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.A_RACCORD_AR to DPM_CARTO;
grant select on PSUDDAT.A_RACCORD_SEQ to DPM_CARTO;

-- privilèges sur la table A_REGARD

grant select,insert,delete,update on PSUDDAT.A_REGARD to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.A_REGARD_AR to DPM_CARTO;
grant select on PSUDDAT.A_REGARD_SEQ to DPM_CARTO;

-- privilèges sur la table A_VENTOU

grant select,insert,delete,update on PSUDDAT.A_VENTOU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.A_VENTOU_AR to DPM_CARTO;
grant select on PSUDDAT.A_VENTOU_SEQ to DPM_CARTO;

-- privilèges sur la table BUSE

grant select,insert,delete,update on PSUDDAT.BUSE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BUSE_AR to DPM_CARTO;
grant select on PSUDDAT.BUSE_SEQ to DPM_CARTO;

-- privilèges sur la table OUVRTETE

grant select,insert,delete,update on PSUDDAT.OUVRTETE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.OUVRTETE_AR to DPM_CARTO;
grant select on PSUDDAT.OUVRTETE_SEQ to DPM_CARTO;

-- privilèges sur la table DIVERS_L

grant select,insert,delete,update on PSUDDAT.DIVERS_L to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.DIVERS_L_AR to DPM_CARTO;
grant select on PSUDDAT.DIVERS_L_SEQ to DPM_CARTO;

-- privilèges sur la table DIVERS_P

grant select,insert,delete,update on PSUDDAT.DIVERS_P to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.DIVERS_P_AR to DPM_CARTO;
grant select on PSUDDAT.DIVERS_P_SEQ to DPM_CARTO;

-- privilèges sur la table DIVERS_S

grant select,insert,delete,update on PSUDDAT.DIVERS_S to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.DIVERS_S_AR to DPM_CARTO;
grant select on PSUDDAT.DIVERS_S_SEQ to DPM_CARTO;

-- privilèges sur la table HINFO

grant select,insert,delete,update on PSUDDAT.HINFO to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.HINFO_AR to DPM_CARTO;
grant select on PSUDDAT.HINFO_SEQ to DPM_CARTO;

-- privilèges sur la table HNMRIV

grant select,insert,delete,update on PSUDDAT.HNMRIV to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.HNMRIV_AR to DPM_CARTO;
grant select on PSUDDAT.HNMRIV_SEQ to DPM_CARTO;

-- privilèges sur la table HRUE

grant select,insert,delete,update on PSUDDAT.HRUE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.HRUE_AR to DPM_CARTO;
grant select on PSUDDAT.HRUE_SEQ to DPM_CARTO;

-- privilèges sur la table HTPNYM

grant select,insert,delete,update on PSUDDAT.HTPNYM to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.HTPNYM_AR to DPM_CARTO;
grant select on PSUDDAT.HTPNYM_SEQ to DPM_CARTO;

-- privilèges sur la table LEVE

grant select,insert,delete,update on PSUDDAT.LEVE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.LEVE_AR to DPM_CARTO;
grant select on PSUDDAT.LEVE_SEQ to DPM_CARTO;

-- privilèges sur la table LIMRES

grant select,insert,delete,update on PSUDDAT.LIMRES to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.LIMRES_AR to DPM_CARTO;
grant select on PSUDDAT.LIMRES_SEQ to DPM_CARTO;

-- privilèges sur la table PTLEVE

grant select,insert,delete,update on PSUDDAT.PTLEVE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PTLEVE_AR to DPM_CARTO;
grant select on PSUDDAT.PTLEVE_SEQ to DPM_CARTO;

-- privilèges sur la table RAX500

grant select,insert,delete,update on PSUDDAT.RAX500 to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.RAX500_AR to DPM_CARTO;
grant select on PSUDDAT.RAX500_SEQ to DPM_CARTO;

-- privilèges sur la table S

grant select,insert,delete,update on PSUDDAT.S to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.S_AR to DPM_CARTO;
grant select on PSUDDAT.S_SEQ to DPM_CARTO;

-- privilèges sur la table CLICHE

grant select,insert,delete,update on PSUDDAT.CLICHE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CLICHE_AR to DPM_CARTO;
grant select on PSUDDAT.CLICHE_SEQ to DPM_CARTO;

-- privilèges sur la table LIMOP

grant select,insert,delete,update on PSUDDAT.LIMOP to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.LIMOP_AR to DPM_CARTO;
grant select on PSUDDAT.LIMOP_SEQ to DPM_CARTO;

-- privilèges sur la table CLOTURE

grant select,insert,delete,update on PSUDDAT.CLOTURE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CLOTURE_AR to DPM_CARTO;
grant select on PSUDDAT.CLOTURE_SEQ to DPM_CARTO;

-- privilèges sur la table JEUXENF

grant select,insert,delete,update on PSUDDAT.JEUXENF to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.JEUXENF_AR to DPM_CARTO;
grant select on PSUDDAT.JEUXENF_SEQ to DPM_CARTO;

-- privilèges sur la table MUR

grant select,insert,delete,update on PSUDDAT.MUR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.MUR_AR to DPM_CARTO;
grant select on PSUDDAT.MUR_SEQ to DPM_CARTO;

-- privilèges sur la table MURSURF

grant select,insert,delete,update on PSUDDAT.MURSURF to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.MURSURF_AR to DPM_CARTO;
grant select on PSUDDAT.MURSURF_SEQ to DPM_CARTO;

-- privilèges sur la table PARCJEUX

grant select,insert,delete,update on PSUDDAT.PARCJEUX to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PARCJEUX_AR to DPM_CARTO;
grant select on PSUDDAT.PARCJEUX_SEQ to DPM_CARTO;

-- privilèges sur la table PORTAIL

grant select,insert,delete,update on PSUDDAT.PORTAIL to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PORTAIL_AR to DPM_CARTO;
grant select on PSUDDAT.PORTAIL_SEQ to DPM_CARTO;

-- privilèges sur la table ARMIX

grant select,insert,delete,update on PSUDDAT.ARMIX to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ARMIX_AR to DPM_CARTO;
grant select on PSUDDAT.ARMIX_SEQ to DPM_CARTO;

-- privilèges sur la table ARMOIRE

grant select,insert,delete,update on PSUDDAT.ARMOIRE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ARMOIRE_AR to DPM_CARTO;
grant select on PSUDDAT.ARMOIRE_SEQ to DPM_CARTO;

-- privilèges sur la table POTEAU

grant select,insert,delete,update on PSUDDAT.POTEAU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.POTEAU_AR to DPM_CARTO;
grant select on PSUDDAT.POTEAU_SEQ to DPM_CARTO;

-- privilèges sur la table POTOMIX

grant select,insert,delete,update on PSUDDAT.POTOMIX to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.POTOMIX_AR to DPM_CARTO;
grant select on PSUDDAT.POTOMIX_SEQ to DPM_CARTO;

-- privilèges sur la table REGARD

grant select,insert,delete,update on PSUDDAT.REGARD to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.REGARD_AR to DPM_CARTO;
grant select on PSUDDAT.REGARD_SEQ to DPM_CARTO;

-- privilèges sur la table REGMIX

grant select,insert,delete,update on PSUDDAT.REGMIX to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.REGMIX_AR to DPM_CARTO;
grant select on PSUDDAT.REGMIX_SEQ to DPM_CARTO;

-- privilèges sur la table TRANCHEE

grant select,insert,delete,update on PSUDDAT.TRANCHEE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TRANCHEE_AR to DPM_CARTO;
grant select on PSUDDAT.TRANCHEE_SEQ to DPM_CARTO;

-- privilèges sur la table BALLUV

grant select,insert,delete,update on PSUDDAT.BALLUV to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BALLUV_AR to DPM_CARTO;
grant select on PSUDDAT.BALLUV_SEQ to DPM_CARTO;

-- privilèges sur la table BARCORAI

grant select,insert,delete,update on PSUDDAT.BARCORAI to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BARCORAI_AR to DPM_CARTO;
grant select on PSUDDAT.BARCORAI_SEQ to DPM_CARTO;

-- privilèges sur la table BORDBASS

grant select,insert,delete,update on PSUDDAT.BORDBASS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BORDBASS_AR to DPM_CARTO;
grant select on PSUDDAT.BORDBASS_SEQ to DPM_CARTO;

-- privilèges sur la table BORDMER

grant select,insert,delete,update on PSUDDAT.BORDMER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BORDMER_AR to DPM_CARTO;
grant select on PSUDDAT.BORDMER_SEQ to DPM_CARTO;

-- privilèges sur la table CASCADE

grant select,insert,delete,update on PSUDDAT.CASCADE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CASCADE_AR to DPM_CARTO;
grant select on PSUDDAT.CASCADE_SEQ to DPM_CARTO;

-- privilèges sur la table CHENAL

grant select,insert,delete,update on PSUDDAT.CHENAL to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CHENAL_AR to DPM_CARTO;
grant select on PSUDDAT.CHENAL_SEQ to DPM_CARTO;

-- privilèges sur la table COTINOND

grant select,insert,delete,update on PSUDDAT.COTINOND to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.COTINOND_AR to DPM_CARTO;
grant select on PSUDDAT.COTINOND_SEQ to DPM_CARTO;

-- privilèges sur la table COURDEAU

grant select,insert,delete,update on PSUDDAT.COURDEAU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.COURDEAU_AR to DPM_CARTO;
grant select on PSUDDAT.COURDEAU_SEQ to DPM_CARTO;

-- privilèges sur la table MER

grant select,insert,delete,update on PSUDDAT.MER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.MER_AR to DPM_CARTO;
grant select on PSUDDAT.MER_SEQ to DPM_CARTO;

-- privilèges sur la table PCOURDO

grant select,insert,delete,update on PSUDDAT.PCOURDO to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PCOURDO_AR to DPM_CARTO;
grant select on PSUDDAT.PCOURDO_SEQ to DPM_CARTO;

-- privilèges sur la table PLAGE

grant select,insert,delete,update on PSUDDAT.PLAGE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PLAGE_AR to DPM_CARTO;
grant select on PSUDDAT.PLAGE_SEQ to DPM_CARTO;

-- privilèges sur la table PLANDEAU

grant select,insert,delete,update on PSUDDAT.PLANDEAU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PLANDEAU_AR to DPM_CARTO;
grant select on PSUDDAT.PLANDEAU_SEQ to DPM_CARTO;

-- privilèges sur la table PLATIER

grant select,insert,delete,update on PSUDDAT.PLATIER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PLATIER_AR to DPM_CARTO;
grant select on PSUDDAT.PLATIER_SEQ to DPM_CARTO;

-- privilèges sur la table SOURCE

grant select,insert,delete,update on PSUDDAT.SOURCE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.SOURCE_AR to DPM_CARTO;
grant select on PSUDDAT.SOURCE_SEQ to DPM_CARTO;

-- privilèges sur la table O_APBTS

grant select,insert,delete,update on PSUDDAT.O_APBTS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.O_APBTS_AR to DPM_CARTO;
grant select on PSUDDAT.O_APBTS_SEQ to DPM_CARTO;

-- privilèges sur la table O_ARMOI

grant select,insert,delete,update on PSUDDAT.O_ARMOI to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.O_ARMOI_AR to DPM_CARTO;
grant select on PSUDDAT.O_ARMOI_SEQ to DPM_CARTO;

-- privilèges sur la table O_BORNE

grant select,insert,delete,update on PSUDDAT.O_BORNE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.O_BORNE_AR to DPM_CARTO;
grant select on PSUDDAT.O_BORNE_SEQ to DPM_CARTO;

-- privilèges sur la table O_CABINE

grant select,insert,delete,update on PSUDDAT.O_CABINE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.O_CABINE_AR to DPM_CARTO;
grant select on PSUDDAT.O_CABINE_SEQ to DPM_CARTO;

-- privilèges sur la table O_CHAMBR

grant select,insert,delete,update on PSUDDAT.O_CHAMBR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.O_CHAMBR_AR to DPM_CARTO;
grant select on PSUDDAT.O_CHAMBR_SEQ to DPM_CARTO;

-- privilèges sur la table O_ENROBE

grant select,insert,delete,update on PSUDDAT.O_ENROBE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.O_ENROBE_AR to DPM_CARTO;
grant select on PSUDDAT.O_ENROBE_SEQ to DPM_CARTO;

-- privilèges sur la table O_REGARD

grant select,insert,delete,update on PSUDDAT.O_REGARD to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.O_REGARD_AR to DPM_CARTO;
grant select on PSUDDAT.O_REGARD_SEQ to DPM_CARTO;

-- privilèges sur la table O_VENTIL

grant select,insert,delete,update on PSUDDAT.O_VENTIL to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.O_VENTIL_AR to DPM_CARTO;
grant select on PSUDDAT.O_VENTIL_SEQ to DPM_CARTO;

-- privilèges sur la table E_BOUCLE

grant select,insert,delete,update on PSUDDAT.E_BOUCLE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_BOUCLE_AR to DPM_CARTO;
grant select on PSUDDAT.E_BOUCLE_SEQ to DPM_CARTO;

-- privilèges sur la table E_COMPTEUR

grant select,insert,delete,update on PSUDDAT.E_COMPTEUR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_COMPTEUR_AR to DPM_CARTO;
grant select on PSUDDAT.E_COMPTEUR_SEQ to DPM_CARTO;

-- privilèges sur la table E_INCENDIE

grant select,insert,delete,update on PSUDDAT.E_INCENDIE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_INCENDIE_AR to DPM_CARTO;
grant select on PSUDDAT.E_INCENDIE_SEQ to DPM_CARTO;

-- privilèges sur la table E_REGARD

grant select,insert,delete,update on PSUDDAT.E_REGARD to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_REGARD_AR to DPM_CARTO;
grant select on PSUDDAT.E_REGARD_SEQ to DPM_CARTO;

-- privilèges sur la table E_TRONCO

grant select,insert,delete,update on PSUDDAT.E_TRONCO to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_TRONCO_AR to DPM_CARTO;
grant select on PSUDDAT.E_TRONCO_SEQ to DPM_CARTO;

-- privilèges sur la table BBATPS

grant select,insert,delete,update on PSUDDAT.BBATPS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BBATPS_AR to DPM_CARTO;
grant select on PSUDDAT.BBATPS_SEQ to DPM_CARTO;

-- privilèges sur la table BLOCROC

grant select,insert,delete,update on PSUDDAT.BLOCROC to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BLOCROC_AR to DPM_CARTO;
grant select on PSUDDAT.BLOCROC_SEQ to DPM_CARTO;

-- privilèges sur la table COURBE

grant select,insert,delete,update on PSUDDAT.COURBE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.COURBE_AR to DPM_CARTO;
grant select on PSUDDAT.COURBE_SEQ to DPM_CARTO;

-- privilèges sur la table DOLINE

grant select,insert,delete,update on PSUDDAT.DOLINE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.DOLINE_AR to DPM_CARTO;
grant select on PSUDDAT.DOLINE_SEQ to DPM_CARTO;

-- privilèges sur la table EBOULIS

grant select,insert,delete,update on PSUDDAT.EBOULIS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.EBOULIS_AR to DPM_CARTO;
grant select on PSUDDAT.EBOULIS_SEQ to DPM_CARTO;

-- privilèges sur la table EXCAVART

grant select,insert,delete,update on PSUDDAT.EXCAVART to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.EXCAVART_AR to DPM_CARTO;
grant select on PSUDDAT.EXCAVART_SEQ to DPM_CARTO;

-- privilèges sur la table FALAISE

grant select,insert,delete,update on PSUDDAT.FALAISE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FALAISE_AR to DPM_CARTO;
grant select on PSUDDAT.FALAISE_SEQ to DPM_CARTO;

-- privilèges sur la table LIGCRETE

grant select,insert,delete,update on PSUDDAT.LIGCRETE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.LIGCRETE_AR to DPM_CARTO;
grant select on PSUDDAT.LIGCRETE_SEQ to DPM_CARTO;

-- privilèges sur la table LIGTALWEG

grant select,insert,delete,update on PSUDDAT.LIGTALWEG to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.LIGTALWEG_AR to DPM_CARTO;
grant select on PSUDDAT.LIGTALWEG_SEQ to DPM_CARTO;

-- privilèges sur la table PT_COTE

grant select,insert,delete,update on PSUDDAT.PT_COTE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PT_COTE_AR to DPM_CARTO;
grant select on PSUDDAT.PT_COTE_SEQ to DPM_CARTO;

-- privilèges sur la table ROCHER

grant select,insert,delete,update on PSUDDAT.ROCHER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ROCHER_AR to DPM_CARTO;
grant select on PSUDDAT.ROCHER_SEQ to DPM_CARTO;

-- privilèges sur la table TALUS

grant select,insert,delete,update on PSUDDAT.TALUS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TALUS_AR to DPM_CARTO;
grant select on PSUDDAT.TALUS_SEQ to DPM_CARTO;

-- privilèges sur la table DEPRESS

grant select,insert,delete,update on PSUDDAT.DEPRESS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.DEPRESS_AR to DPM_CARTO;
grant select on PSUDDAT.DEPRESS_SEQ to DPM_CARTO;

-- privilèges sur la table BT_COFR

grant select,insert,delete,update on PSUDDAT.BT_COFR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BT_COFR_AR to DPM_CARTO;
grant select on PSUDDAT.BT_COFR_SEQ to DPM_CARTO;

-- privilèges sur la table CANDELAB

grant select,insert,delete,update on PSUDDAT.CANDELAB to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CANDELAB_AR to DPM_CARTO;
grant select on PSUDDAT.CANDELAB_SEQ to DPM_CARTO;

-- privilèges sur la table EL_GENPHO

grant select,insert,delete,update on PSUDDAT.EL_GENPHO to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.EL_GENPHO_AR to DPM_CARTO;
grant select on PSUDDAT.EL_GENPHO_SEQ to DPM_CARTO;

-- privilèges sur la table ELEC_CPT

grant select,insert,delete,update on PSUDDAT.ELEC_CPT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ELEC_CPT_AR to DPM_CARTO;
grant select on PSUDDAT.ELEC_CPT_SEQ to DPM_CARTO;

-- privilèges sur la table ELEC_REG

grant select,insert,delete,update on PSUDDAT.ELEC_REG to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ELEC_REG_AR to DPM_CARTO;
grant select on PSUDDAT.ELEC_REG_SEQ to DPM_CARTO;

-- privilèges sur la table MT_TRANS

grant select,insert,delete,update on PSUDDAT.MT_TRANS to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.MT_TRANS_AR to DPM_CARTO;
grant select on PSUDDAT.MT_TRANS_SEQ to DPM_CARTO;

-- privilèges sur la table POSTEH61

grant select,insert,delete,update on PSUDDAT.POSTEH61 to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.POSTEH61_AR to DPM_CARTO;
grant select on PSUDDAT.POSTEH61_SEQ to DPM_CARTO;

-- privilèges sur la table P_URB

grant select,insert,delete,update on PSUDDAT.P_URB to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.P_URB_AR to DPM_CARTO;
grant select on PSUDDAT.P_URB_SEQ to DPM_CARTO;

-- privilèges sur la table PROVINCE

grant select,insert,delete,update on PSUDDAT.PROVINCE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PROVINCE_AR to DPM_CARTO;
grant select on PSUDDAT.PROVINCE_SEQ to DPM_CARTO;

-- privilèges sur la table ORTHO_PSUD

grant select,insert,delete,update on PSUDDAT.ORTHO_PSUD to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ORTHO_PSUD_AR to DPM_CARTO;
grant select on PSUDDAT.ORTHO_PSUD_SEQ to DPM_CARTO;

-- privilèges sur la table ORTHO_SERAIL

grant select,insert,delete,update on PSUDDAT.ORTHO_SERAIL to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ORTHO_SERAIL_AR to DPM_CARTO;
grant select on PSUDDAT.ORTHO_SERAIL_SEQ to DPM_CARTO;

-- privilèges sur la table RASTER10

grant select,insert,delete,update on PSUDDAT.RASTER10 to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.RASTER10_AR to DPM_CARTO;
grant select on PSUDDAT.RASTER10_SEQ to DPM_CARTO;

-- privilèges sur la table SATELLITE

grant select,insert,delete,update on PSUDDAT.SATELLITE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.SATELLITE_AR to DPM_CARTO;
grant select on PSUDDAT.SATELLITE_SEQ to DPM_CARTO;

-- privilèges sur la table ORTHO_DITTT

grant select,insert,delete,update on PSUDDAT.ORTHO_DITTT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ORTHO_DITTT_AR to DPM_CARTO;
grant select on PSUDDAT.ORTHO_DITTT_SEQ to DPM_CARTO;

-- privilèges sur la table DIVERS_MNT

grant select,insert,delete,update on PSUDDAT.DIVERS_MNT to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.DIVERS_MNT_AR to DPM_CARTO;
grant select on PSUDDAT.DIVERS_MNT_SEQ to DPM_CARTO;

-- privilèges sur la table TEMPO_L

grant select,insert,delete,update on PSUDDAT.TEMPO_L to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TEMPO_L_AR to DPM_CARTO;
grant select on PSUDDAT.TEMPO_L_SEQ to DPM_CARTO;

-- privilèges sur la table TEMPO_P

grant select,insert,delete,update on PSUDDAT.TEMPO_P to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TEMPO_P_AR to DPM_CARTO;
grant select on PSUDDAT.TEMPO_P_SEQ to DPM_CARTO;

-- privilèges sur la table TEMPO_S

grant select,insert,delete,update on PSUDDAT.TEMPO_S to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TEMPO_S_AR to DPM_CARTO;
grant select on PSUDDAT.TEMPO_S_SEQ to DPM_CARTO;

-- privilèges sur la table ZONEBLOK

grant select,insert,delete,update on PSUDDAT.ZONEBLOK to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ZONEBLOK_AR to DPM_CARTO;
grant select on PSUDDAT.ZONEBLOK_SEQ to DPM_CARTO;

-- privilèges sur la table BALISMAR

grant select,insert,delete,update on PSUDDAT.BALISMAR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BALISMAR_AR to DPM_CARTO;
grant select on PSUDDAT.BALISMAR_SEQ to DPM_CARTO;

-- privilèges sur la table EPAVE

grant select,insert,delete,update on PSUDDAT.EPAVE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.EPAVE_AR to DPM_CARTO;
grant select on PSUDDAT.EPAVE_SEQ to DPM_CARTO;

-- privilèges sur la table HERBIER

grant select,insert,delete,update on PSUDDAT.HERBIER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.HERBIER_AR to DPM_CARTO;
grant select on PSUDDAT.HERBIER_SEQ to DPM_CARTO;

-- privilèges sur la table ISOBATHE

grant select,insert,delete,update on PSUDDAT.ISOBATHE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.ISOBATHE_AR to DPM_CARTO;
grant select on PSUDDAT.ISOBATHE_SEQ to DPM_CARTO;

-- privilèges sur la table PALETUVIER

grant select,insert,delete,update on PSUDDAT.PALETUVIER to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PALETUVIER_AR to DPM_CARTO;
grant select on PSUDDAT.PALETUVIER_SEQ to DPM_CARTO;

-- privilèges sur la table PINACORA

grant select,insert,delete,update on PSUDDAT.PINACORA to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PINACORA_AR to DPM_CARTO;
grant select on PSUDDAT.PINACORA_SEQ to DPM_CARTO;

-- privilèges sur la table SONDE

grant select,insert,delete,update on PSUDDAT.SONDE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.SONDE_AR to DPM_CARTO;
grant select on PSUDDAT.SONDE_SEQ to DPM_CARTO;

-- privilèges sur la table CABAE

grant select,insert,delete,update on PSUDDAT.CABAE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CABAE_AR to DPM_CARTO;
grant select on PSUDDAT.CABAE_SEQ to DPM_CARTO;

-- privilèges sur la table BOITE

grant select,insert,delete,update on PSUDDAT.BOITE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BOITE_AR to DPM_CARTO;
grant select on PSUDDAT.BOITE_SEQ to DPM_CARTO;

-- privilèges sur la table BRANCH

grant select,insert,delete,update on PSUDDAT.BRANCH to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.BRANCH_AR to DPM_CARTO;
grant select on PSUDDAT.BRANCH_SEQ to DPM_CARTO;

-- privilèges sur la table CABLE

grant select,insert,delete,update on PSUDDAT.CABLE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CABLE_AR to DPM_CARTO;
grant select on PSUDDAT.CABLE_SEQ to DPM_CARTO;

-- privilèges sur la table CONDUITE

grant select,insert,delete,update on PSUDDAT.CONDUITE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.CONDUITE_AR to DPM_CARTO;
grant select on PSUDDAT.CONDUITE_SEQ to DPM_CARTO;

-- privilèges sur la table E_LAMPE

grant select,insert,delete,update on PSUDDAT.E_LAMPE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_LAMPE_AR to DPM_CARTO;
grant select on PSUDDAT.E_LAMPE_SEQ to DPM_CARTO;

-- privilèges sur la table E_PURGE

grant select,insert,delete,update on PSUDDAT.E_PURGE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_PURGE_AR to DPM_CARTO;
grant select on PSUDDAT.E_PURGE_SEQ to DPM_CARTO;

-- privilèges sur la table E_RACCOR

grant select,insert,delete,update on PSUDDAT.E_RACCOR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_RACCOR_AR to DPM_CARTO;
grant select on PSUDDAT.E_RACCOR_SEQ to DPM_CARTO;

-- privilèges sur la table E_VANNE

grant select,insert,delete,update on PSUDDAT.E_VANNE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_VANNE_AR to DPM_CARTO;
grant select on PSUDDAT.E_VANNE_SEQ to DPM_CARTO;

-- privilèges sur la table E_VENTOU

grant select,insert,delete,update on PSUDDAT.E_VENTOU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.E_VENTOU_AR to DPM_CARTO;
grant select on PSUDDAT.E_VENTOU_SEQ to DPM_CARTO;

-- privilèges sur la table EL_CHAMB

grant select,insert,delete,update on PSUDDAT.EL_CHAMB to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.EL_CHAMB_AR to DPM_CARTO;
grant select on PSUDDAT.EL_CHAMB_SEQ to DPM_CARTO;

-- privilèges sur la table EMPRISE

grant select,insert,delete,update on PSUDDAT.EMPRISE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.EMPRISE_AR to DPM_CARTO;
grant select on PSUDDAT.EMPRISE_SEQ to DPM_CARTO;

-- privilèges sur la table FOURREAU

grant select,insert,delete,update on PSUDDAT.FOURREAU to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.FOURREAU_AR to DPM_CARTO;
grant select on PSUDDAT.FOURREAU_SEQ to DPM_CARTO;

-- privilèges sur la table INTERRUPTEUR

grant select,insert,delete,update on PSUDDAT.INTERRUPTEUR to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.INTERRUPTEUR_AR to DPM_CARTO;
grant select on PSUDDAT.INTERRUPTEUR_SEQ to DPM_CARTO;

-- privilèges sur la table O_MURET

grant select,insert,delete,update on PSUDDAT.O_MURET to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.O_MURET_AR to DPM_CARTO;
grant select on PSUDDAT.O_MURET_SEQ to DPM_CARTO;

-- privilèges sur la table PIECE

grant select,insert,delete,update on PSUDDAT.PIECE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.PIECE_AR to DPM_CARTO;
grant select on PSUDDAT.PIECE_SEQ to DPM_CARTO;

-- privilèges sur la table TERRE

grant select,insert,delete,update on PSUDDAT.TERRE to DPM_CARTO;
grant select,insert,delete,update on PSUDDAT.TERRE_AR to DPM_CARTO;
grant select on PSUDDAT.TERRE_SEQ to DPM_CARTO;

-- privilèges sur les tables d'index

declare
  req varchar2(500);
  cursor c1 is
    select SDO_INDEX_OWNER,SDO_INDEX_TABLE
    from ALL_SDO_INDEX_METADATA sid, PSUDDAT.APIC_CLASS aic 
    where sid.SDO_INDEX_NAME=aic.GEOM_NAMEIND
    and sid.SDO_INDEX_OWNER=aic.OWNER;
begin
  FOR c1_rec IN c1 LOOP
    req:='grant select,delete,insert,update on '||c1_rec.sdo_index_owner||'.'||c1_rec.SDO_INDEX_TABLE||
       ' to DPM_CARTO';
    execute immediate req;
  END LOOP;
end;
/

-- privilèges sur les vues pour l'indexation spatiale

grant SELECT ON SYS.DBA_VIEWS to DPM_CARTO;

-- on redonne le rôle DPM_CARTO aux utilisateurs sauvegardés

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.GrantSavedGrantee_role (''DPM_CARTO'')';
  exception
    when others then
    null;
end;
/


commit;

