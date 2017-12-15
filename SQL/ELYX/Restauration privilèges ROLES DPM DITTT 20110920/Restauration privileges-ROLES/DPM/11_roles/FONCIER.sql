
-- sauvegarde des utilisateurs associés au role DPM_FONCIER

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.SaveGrantee_role (''DPM_FONCIER'')';
  exception
    when others then
    null;
end;
/
begin
  execute immediate 'drop role DPM_FONCIER';
  exception
    when others then
    null;
end;
/
create role DPM_FONCIER not identified;
declare
  luser varchar2(80);
begin
  select user into luser from dual;
  execute immediate 'revoke DPM_FONCIER from '||luser;
end;
/

-- privilèges pour le schéma de l'instance APICADM

grant select on APICADM.APIC_BD_CATALOG to DPM_FONCIER;

-- privilèges pour le schéma du modèle PSUDCAT

grant select on PSUDCAT.APIC_BASE to DPM_FONCIER;
grant select on PSUDCAT.APIC_CLASS_MCD to DPM_FONCIER;
grant select on PSUDCAT.STCA_ROLE to DPM_FONCIER;
grant select on PSUDCAT.APIC_USER to DPM_FONCIER;
grant select on PSUDCAT.APIC_USER_ROLE to DPM_FONCIER;
grant select on PSUDCAT.STCA_PRODUCT to DPM_FONCIER;
grant select,insert,delete,update on PSUDCAT.STCA_PUBLICATION to DPM_FONCIER;
grant select on PSUDCAT.STCA_PA_TYPE to DPM_FONCIER;
grant select,insert,delete,update on PSUDCAT.STCA_PARAM to DPM_FONCIER;
grant select,insert,delete,update on PSUDCAT.STCA_PA_NAME to DPM_FONCIER;
grant select,insert,delete,update on PSUDCAT.STCA_BINARY_PARAM to DPM_FONCIER;
grant select on PSUDCAT.STCA_PAT_PRO to DPM_FONCIER;
grant select,insert,delete,update on PSUDCAT.STCA_RO_PA to DPM_FONCIER;
grant select,insert,delete,update on PSUDCAT.STCA_ETAT_USER to DPM_FONCIER;
grant select on PSUDCAT.STCA_ETAT_ROLE to DPM_FONCIER;
grant select on PSUDCAT.PARAM_SEQ_ID to DPM_FONCIER;
grant select on PSUDCAT.PUBLI_SEQ_ID to DPM_FONCIER;

-- privilèges pour le schéma de la base PSUDDAT

grant select,insert,delete,update on PSUDDAT.APIC_CLASS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.APIC_STATE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.APIC_HIERARCH to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.APIC_TRANSACTION to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.APIC_SCHEMA to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.APIC_SCHEMA_RELATION to DPM_FONCIER;
grant select on PSUDDAT.SEQ_APIC_TRANSACTION to DPM_FONCIER;
grant select on PSUDDAT.APIC_SCHEMA_SEQ to DPM_FONCIER;

-- privilèges sur la table ARBRE

grant select on PSUDDAT.ARBRE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ARBRE_AR to DPM_FONCIER;

-- privilèges sur la table PLANTALI

grant select on PSUDDAT.PLANTALI to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PLANTALI_AR to DPM_FONCIER;

-- privilèges sur la table PREMVEG

grant select on PSUDDAT.PREMVEG to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PREMVEG_AR to DPM_FONCIER;

-- privilèges sur la table SURFVEGE

grant select on PSUDDAT.SURFVEGE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.SURFVEGE_AR to DPM_FONCIER;

-- privilèges sur la table CENTPARC

grant select,insert,delete,update on PSUDDAT.CENTPARC to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CENTPARC_AR to DPM_FONCIER;
grant select on PSUDDAT.CENTPARC_SEQ to DPM_FONCIER;

-- privilèges sur la table FACE

grant select,insert,delete,update on PSUDDAT.FACE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FACE_AR to DPM_FONCIER;
grant select on PSUDDAT.FACE_SEQ to DPM_FONCIER;

-- privilèges sur la table FILOT

grant select,insert,delete,update on PSUDDAT.FILOT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FILOT_AR to DPM_FONCIER;
grant select on PSUDDAT.FILOT_SEQ to DPM_FONCIER;

-- privilèges sur la table FLOCA

grant select,insert,delete,update on PSUDDAT.FLOCA to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FLOCA_AR to DPM_FONCIER;
grant select on PSUDDAT.FLOCA_SEQ to DPM_FONCIER;

-- privilèges sur la table FLUV

grant select,insert,delete,update on PSUDDAT.FLUV to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FLUV_AR to DPM_FONCIER;
grant select on PSUDDAT.FLUV_SEQ to DPM_FONCIER;

-- privilèges sur la table FMAR

grant select,insert,delete,update on PSUDDAT.FMAR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FMAR_AR to DPM_FONCIER;
grant select on PSUDDAT.FMAR_SEQ to DPM_FONCIER;

-- privilèges sur la table FPROJ

grant select,insert,delete,update on PSUDDAT.FPROJ to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FPROJ_AR to DPM_FONCIER;
grant select on PSUDDAT.FPROJ_SEQ to DPM_FONCIER;

-- privilèges sur la table FREPST

grant select,insert,delete,update on PSUDDAT.FREPST to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FREPST_AR to DPM_FONCIER;
grant select on PSUDDAT.FREPST_SEQ to DPM_FONCIER;

-- privilèges sur la table FRESER

grant select,insert,delete,update on PSUDDAT.FRESER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FRESER_AR to DPM_FONCIER;
grant select on PSUDDAT.FRESER_SEQ to DPM_FONCIER;

-- privilèges sur la table FSERV

grant select,insert,delete,update on PSUDDAT.FSERV to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FSERV_AR to DPM_FONCIER;
grant select on PSUDDAT.FSERV_SEQ to DPM_FONCIER;

-- privilèges sur la table FVOIE

grant select,insert,delete,update on PSUDDAT.FVOIE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FVOIE_AR to DPM_FONCIER;
grant select on PSUDDAT.FVOIE_SEQ to DPM_FONCIER;

-- privilèges sur la table PARCELLE

grant select,insert,delete,update on PSUDDAT.PARCELLE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PARCELLE_AR to DPM_FONCIER;
grant select on PSUDDAT.PARCELLE_SEQ to DPM_FONCIER;

-- privilèges sur la table PARCPROV

grant select,insert,delete,update on PSUDDAT.PARCPROV to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PARCPROV_AR to DPM_FONCIER;
grant select on PSUDDAT.PARCPROV_SEQ to DPM_FONCIER;

-- privilèges sur la table QUARTIER

grant select,insert,delete,update on PSUDDAT.QUARTIER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.QUARTIER_AR to DPM_FONCIER;
grant select on PSUDDAT.QUARTIER_SEQ to DPM_FONCIER;

-- privilèges sur la table SOMPAR

grant select,insert,delete,update on PSUDDAT.SOMPAR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.SOMPAR_AR to DPM_FONCIER;
grant select on PSUDDAT.SOMPAR_SEQ to DPM_FONCIER;

-- privilèges sur la table COMMUNE

grant select on PSUDDAT.COMMUNE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.COMMUNE_AR to DPM_FONCIER;

-- privilèges sur la table PARCELLE_T

grant select,insert,delete,update on PSUDDAT.PARCELLE_T to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PARCELLE_T_AR to DPM_FONCIER;
grant select on PSUDDAT.PARCELLE_T_SEQ to DPM_FONCIER;

-- privilèges sur la table FICHEINFRA

grant select on PSUDDAT.FICHEINFRA to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FICHEINFRA_AR to DPM_FONCIER;

-- privilèges sur la table GEOD

grant select on PSUDDAT.GEOD to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.GEOD_AR to DPM_FONCIER;

-- privilèges sur la table GEOREP

grant select on PSUDDAT.GEOREP to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.GEOREP_AR to DPM_FONCIER;

-- privilèges sur la table GNIREP

grant select on PSUDDAT.GNIREP to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.GNIREP_AR to DPM_FONCIER;

-- privilèges sur la table GNIV

grant select on PSUDDAT.GNIV to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.GNIV_AR to DPM_FONCIER;

-- privilèges sur la table GPOL

grant select on PSUDDAT.GPOL to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.GPOL_AR to DPM_FONCIER;

-- privilèges sur la table GPOREP

grant select on PSUDDAT.GPOREP to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.GPOREP_AR to DPM_FONCIER;

-- privilèges sur la table HINFRA

grant select on PSUDDAT.HINFRA to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.HINFRA_AR to DPM_FONCIER;

-- privilèges sur la table TEXTEINFRA

grant select on PSUDDAT.TEXTEINFRA to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TEXTEINFRA_AR to DPM_FONCIER;

-- privilèges sur la table ANTENNE

grant select on PSUDDAT.ANTENNE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ANTENNE_AR to DPM_FONCIER;

-- privilèges sur la table BALIAERO

grant select on PSUDDAT.BALIAERO to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BALIAERO_AR to DPM_FONCIER;

-- privilèges sur la table BATIMENT

grant select on PSUDDAT.BATIMENT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BATIMENT_AR to DPM_FONCIER;

-- privilèges sur la table BSLETTRE

grant select on PSUDDAT.BSLETTRE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BSLETTRE_AR to DPM_FONCIER;

-- privilèges sur la table CIMETIER

grant select on PSUDDAT.CIMETIER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CIMETIER_AR to DPM_FONCIER;

-- privilèges sur la table CONDUFOR

grant select on PSUDDAT.CONDUFOR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CONDUFOR_AR to DPM_FONCIER;

-- privilèges sur la table DEPOTOIR

grant select on PSUDDAT.DEPOTOIR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.DEPOTOIR_AR to DPM_FONCIER;

-- privilèges sur la table EAUARTIF

grant select on PSUDDAT.EAUARTIF to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.EAUARTIF_AR to DPM_FONCIER;

-- privilèges sur la table ENROCHEMENT

grant select on PSUDDAT.ENROCHEMENT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ENROCHEMENT_AR to DPM_FONCIER;

-- privilèges sur la table EOLIENNE

grant select on PSUDDAT.EOLIENNE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.EOLIENNE_AR to DPM_FONCIER;

-- privilèges sur la table FACADE

grant select on PSUDDAT.FACADE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FACADE_AR to DPM_FONCIER;

-- privilèges sur la table FEUSIGNA

grant select on PSUDDAT.FEUSIGNA to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FEUSIGNA_AR to DPM_FONCIER;

-- privilèges sur la table H_VANNE

grant select on PSUDDAT.H_VANNE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.H_VANNE_AR to DPM_FONCIER;

-- privilèges sur la table HELIPORT

grant select on PSUDDAT.HELIPORT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.HELIPORT_AR to DPM_FONCIER;

-- privilèges sur la table ILOTBP

grant select on PSUDDAT.ILOTBP to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ILOTBP_AR to DPM_FONCIER;

-- privilèges sur la table LIMSPORT

grant select on PSUDDAT.LIMSPORT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.LIMSPORT_AR to DPM_FONCIER;

-- privilèges sur la table LINAERO

grant select on PSUDDAT.LINAERO to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.LINAERO_AR to DPM_FONCIER;

-- privilèges sur la table MONUMENT

grant select on PSUDDAT.MONUMENT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.MONUMENT_AR to DPM_FONCIER;

-- privilèges sur la table OUVARTLI

grant select on PSUDDAT.OUVARTLI to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.OUVARTLI_AR to DPM_FONCIER;

-- privilèges sur la table OUVRDART

grant select on PSUDDAT.OUVRDART to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.OUVRDART_AR to DPM_FONCIER;

-- privilèges sur la table PIPELINE

grant select on PSUDDAT.PIPELINE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PIPELINE_AR to DPM_FONCIER;

-- privilèges sur la table PISBOEUF

grant select on PSUDDAT.PISBOEUF to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PISBOEUF_AR to DPM_FONCIER;

-- privilèges sur la table PISCINE

grant select on PSUDDAT.PISCINE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PISCINE_AR to DPM_FONCIER;

-- privilèges sur la table PISTAERO

grant select on PSUDDAT.PISTAERO to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PISTAERO_AR to DPM_FONCIER;

-- privilèges sur la table PORTDRAP

grant select on PSUDDAT.PORTDRAP to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PORTDRAP_AR to DPM_FONCIER;

-- privilèges sur la table POTOBATI

grant select on PSUDDAT.POTOBATI to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.POTOBATI_AR to DPM_FONCIER;

-- privilèges sur la table RESERHYD

grant select on PSUDDAT.RESERHYD to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.RESERHYD_AR to DPM_FONCIER;

-- privilèges sur la table RUINE

grant select on PSUDDAT.RUINE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.RUINE_AR to DPM_FONCIER;

-- privilèges sur la table SOUTENEMENT

grant select on PSUDDAT.SOUTENEMENT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.SOUTENEMENT_AR to DPM_FONCIER;

-- privilèges sur la table STAMETEO

grant select on PSUDDAT.STAMETEO to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.STAMETEO_AR to DPM_FONCIER;

-- privilèges sur la table STATUE

grant select on PSUDDAT.STATUE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.STATUE_AR to DPM_FONCIER;

-- privilèges sur la table STOCKEAU

grant select on PSUDDAT.STOCKEAU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.STOCKEAU_AR to DPM_FONCIER;

-- privilèges sur la table STOCKMIN

grant select on PSUDDAT.STOCKMIN to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.STOCKMIN_AR to DPM_FONCIER;

-- privilèges sur la table TOMBE

grant select on PSUDDAT.TOMBE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TOMBE_AR to DPM_FONCIER;

-- privilèges sur la table TRANSMIN

grant select on PSUDDAT.TRANSMIN to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TRANSMIN_AR to DPM_FONCIER;

-- privilèges sur la table TSPORTS

grant select on PSUDDAT.TSPORTS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TSPORTS_AR to DPM_FONCIER;

-- privilèges sur la table UNITEPROD

grant select on PSUDDAT.UNITEPROD to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.UNITEPROD_AR to DPM_FONCIER;

-- privilèges sur la table ABRIBUS

grant select on PSUDDAT.ABRIBUS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ABRIBUS_AR to DPM_FONCIER;

-- privilèges sur la table AIRESTAT

grant select on PSUDDAT.AIRESTAT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.AIRESTAT_AR to DPM_FONCIER;

-- privilèges sur la table ALPIETAM

grant select on PSUDDAT.ALPIETAM to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ALPIETAM_AR to DPM_FONCIER;

-- privilèges sur la table ARCEAU

grant select on PSUDDAT.ARCEAU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ARCEAU_AR to DPM_FONCIER;

-- privilèges sur la table BALISVOI

grant select on PSUDDAT.BALISVOI to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BALISVOI_AR to DPM_FONCIER;

-- privilèges sur la table BANC

grant select on PSUDDAT.BANC to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BANC_AR to DPM_FONCIER;

-- privilèges sur la table BLOCSAN

grant select on PSUDDAT.BLOCSAN to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BLOCSAN_AR to DPM_FONCIER;

-- privilèges sur la table BORDTROT

grant select on PSUDDAT.BORDTROT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BORDTROT_AR to DPM_FONCIER;

-- privilèges sur la table BORNANTI

grant select on PSUDDAT.BORNANTI to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BORNANTI_AR to DPM_FONCIER;

-- privilèges sur la table BORNELUM

grant select on PSUDDAT.BORNELUM to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BORNELUM_AR to DPM_FONCIER;

-- privilèges sur la table BORNRP

grant select on PSUDDAT.BORNRP to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BORNRP_AR to DPM_FONCIER;

-- privilèges sur la table CAPTEUR

grant select on PSUDDAT.CAPTEUR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CAPTEUR_AR to DPM_FONCIER;

-- privilèges sur la table DRAINACC

grant select on PSUDDAT.DRAINACC to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.DRAINACC_AR to DPM_FONCIER;

-- privilèges sur la table ENTCHAR

grant select on PSUDDAT.ENTCHAR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ENTCHAR_AR to DPM_FONCIER;

-- privilèges sur la table FEUX

grant select on PSUDDAT.FEUX to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FEUX_AR to DPM_FONCIER;

-- privilèges sur la table FLECPEIN

grant select on PSUDDAT.FLECPEIN to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FLECPEIN_AR to DPM_FONCIER;

-- privilèges sur la table GLISSECU

grant select on PSUDDAT.GLISSECU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.GLISSECU_AR to DPM_FONCIER;

-- privilèges sur la table GUE

grant select on PSUDDAT.GUE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.GUE_AR to DPM_FONCIER;

-- privilèges sur la table HORODATE

grant select on PSUDDAT.HORODATE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.HORODATE_AR to DPM_FONCIER;

-- privilèges sur la table PANNEAU

grant select on PSUDDAT.PANNEAU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PANNEAU_AR to DPM_FONCIER;

-- privilèges sur la table PANOPUB

grant select on PSUDDAT.PANOPUB to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PANOPUB_AR to DPM_FONCIER;

-- privilèges sur la table PASSEREL

grant select on PSUDDAT.PASSEREL to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PASSEREL_AR to DPM_FONCIER;

-- privilèges sur la table PASSPIET

grant select on PSUDDAT.PASSPIET to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PASSPIET_AR to DPM_FONCIER;

-- privilèges sur la table POUBELLE

grant select on PSUDDAT.POUBELLE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.POUBELLE_AR to DPM_FONCIER;

-- privilèges sur la table RALENTIS

grant select on PSUDDAT.RALENTIS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.RALENTIS_AR to DPM_FONCIER;

-- privilèges sur la table SENTIER

grant select on PSUDDAT.SENTIER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.SENTIER_AR to DPM_FONCIER;

-- privilèges sur la table SIGARMOI

grant select on PSUDDAT.SIGARMOI to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.SIGARMOI_AR to DPM_FONCIER;

-- privilèges sur la table SIGNHOR

grant select on PSUDDAT.SIGNHOR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.SIGNHOR_AR to DPM_FONCIER;

-- privilèges sur la table TEXTPEIN

grant select on PSUDDAT.TEXTPEIN to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TEXTPEIN_AR to DPM_FONCIER;

-- privilèges sur la table VOIACCES

grant select on PSUDDAT.VOIACCES to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.VOIACCES_AR to DPM_FONCIER;

-- privilèges sur la table ZEBRA

grant select on PSUDDAT.ZEBRA to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ZEBRA_AR to DPM_FONCIER;

-- privilèges sur la table ZONARBUS

grant select on PSUDDAT.ZONARBUS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ZONARBUS_AR to DPM_FONCIER;

-- privilèges sur la table PLATFORM

grant select on PSUDDAT.PLATFORM to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PLATFORM_AR to DPM_FONCIER;

-- privilèges sur la table BORNEURG

grant select on PSUDDAT.BORNEURG to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BORNEURG_AR to DPM_FONCIER;

-- privilèges sur la table CAMSURV

grant select on PSUDDAT.CAMSURV to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CAMSURV_AR to DPM_FONCIER;

-- privilèges sur la table PTCYCL

grant select on PSUDDAT.PTCYCL to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PTCYCL_AR to DPM_FONCIER;

-- privilèges sur la table META_DITTT

grant select on PSUDDAT.META_DITTT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.META_DITTT_AR to DPM_FONCIER;

-- privilèges sur la table P10000

grant select on PSUDDAT.P10000 to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.P10000_AR to DPM_FONCIER;

-- privilèges sur la table P12500

grant select on PSUDDAT.P12500 to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.P12500_AR to DPM_FONCIER;

-- privilèges sur la table P2000

grant select on PSUDDAT.P2000 to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.P2000_AR to DPM_FONCIER;

-- privilèges sur la table P500

grant select on PSUDDAT.P500 to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.P500_AR to DPM_FONCIER;

-- privilèges sur la table P50000

grant select on PSUDDAT.P50000 to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.P50000_AR to DPM_FONCIER;

-- privilèges sur la table A_AXECOU

grant select on PSUDDAT.A_AXECOU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.A_AXECOU_AR to DPM_FONCIER;

-- privilèges sur la table A_AXEFOS

grant select on PSUDDAT.A_AXEFOS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.A_AXEFOS_AR to DPM_FONCIER;

-- privilèges sur la table A_BASVER

grant select on PSUDDAT.A_BASVER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.A_BASVER_AR to DPM_FONCIER;

-- privilèges sur la table A_CANIV

grant select on PSUDDAT.A_CANIV to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.A_CANIV_AR to DPM_FONCIER;

-- privilèges sur la table A_GRISUR

grant select on PSUDDAT.A_GRISUR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.A_GRISUR_AR to DPM_FONCIER;

-- privilèges sur la table A_PURGE

grant select on PSUDDAT.A_PURGE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.A_PURGE_AR to DPM_FONCIER;

-- privilèges sur la table A_RACCORD

grant select on PSUDDAT.A_RACCORD to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.A_RACCORD_AR to DPM_FONCIER;

-- privilèges sur la table A_REGARD

grant select on PSUDDAT.A_REGARD to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.A_REGARD_AR to DPM_FONCIER;

-- privilèges sur la table A_VENTOU

grant select on PSUDDAT.A_VENTOU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.A_VENTOU_AR to DPM_FONCIER;

-- privilèges sur la table BUSE

grant select on PSUDDAT.BUSE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BUSE_AR to DPM_FONCIER;

-- privilèges sur la table OUVRTETE

grant select on PSUDDAT.OUVRTETE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.OUVRTETE_AR to DPM_FONCIER;

-- privilèges sur la table DIVERS_L

grant select on PSUDDAT.DIVERS_L to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.DIVERS_L_AR to DPM_FONCIER;

-- privilèges sur la table DIVERS_P

grant select on PSUDDAT.DIVERS_P to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.DIVERS_P_AR to DPM_FONCIER;

-- privilèges sur la table DIVERS_S

grant select on PSUDDAT.DIVERS_S to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.DIVERS_S_AR to DPM_FONCIER;

-- privilèges sur la table HINFO

grant select on PSUDDAT.HINFO to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.HINFO_AR to DPM_FONCIER;

-- privilèges sur la table HNMRIV

grant select on PSUDDAT.HNMRIV to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.HNMRIV_AR to DPM_FONCIER;

-- privilèges sur la table HRUE

grant select on PSUDDAT.HRUE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.HRUE_AR to DPM_FONCIER;

-- privilèges sur la table HTPNYM

grant select on PSUDDAT.HTPNYM to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.HTPNYM_AR to DPM_FONCIER;

-- privilèges sur la table LEVE

grant select on PSUDDAT.LEVE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.LEVE_AR to DPM_FONCIER;

-- privilèges sur la table LIMRES

grant select on PSUDDAT.LIMRES to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.LIMRES_AR to DPM_FONCIER;

-- privilèges sur la table PTLEVE

grant select on PSUDDAT.PTLEVE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PTLEVE_AR to DPM_FONCIER;

-- privilèges sur la table RAX500

grant select on PSUDDAT.RAX500 to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.RAX500_AR to DPM_FONCIER;

-- privilèges sur la table S

grant select on PSUDDAT.S to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.S_AR to DPM_FONCIER;

-- privilèges sur la table CLICHE

grant select on PSUDDAT.CLICHE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CLICHE_AR to DPM_FONCIER;

-- privilèges sur la table LIMOP

grant select on PSUDDAT.LIMOP to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.LIMOP_AR to DPM_FONCIER;

-- privilèges sur la table CLOTURE

grant select on PSUDDAT.CLOTURE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CLOTURE_AR to DPM_FONCIER;

-- privilèges sur la table JEUXENF

grant select on PSUDDAT.JEUXENF to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.JEUXENF_AR to DPM_FONCIER;

-- privilèges sur la table MUR

grant select on PSUDDAT.MUR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.MUR_AR to DPM_FONCIER;

-- privilèges sur la table MURSURF

grant select on PSUDDAT.MURSURF to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.MURSURF_AR to DPM_FONCIER;

-- privilèges sur la table PARCJEUX

grant select on PSUDDAT.PARCJEUX to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PARCJEUX_AR to DPM_FONCIER;

-- privilèges sur la table PORTAIL

grant select on PSUDDAT.PORTAIL to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PORTAIL_AR to DPM_FONCIER;

-- privilèges sur la table ARMIX

grant select on PSUDDAT.ARMIX to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ARMIX_AR to DPM_FONCIER;

-- privilèges sur la table ARMOIRE

grant select on PSUDDAT.ARMOIRE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ARMOIRE_AR to DPM_FONCIER;

-- privilèges sur la table POTEAU

grant select on PSUDDAT.POTEAU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.POTEAU_AR to DPM_FONCIER;

-- privilèges sur la table POTOMIX

grant select on PSUDDAT.POTOMIX to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.POTOMIX_AR to DPM_FONCIER;

-- privilèges sur la table REGARD

grant select on PSUDDAT.REGARD to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.REGARD_AR to DPM_FONCIER;

-- privilèges sur la table REGMIX

grant select on PSUDDAT.REGMIX to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.REGMIX_AR to DPM_FONCIER;

-- privilèges sur la table TRANCHEE

grant select on PSUDDAT.TRANCHEE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TRANCHEE_AR to DPM_FONCIER;

-- privilèges sur la table BALLUV

grant select on PSUDDAT.BALLUV to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BALLUV_AR to DPM_FONCIER;

-- privilèges sur la table BARCORAI

grant select on PSUDDAT.BARCORAI to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BARCORAI_AR to DPM_FONCIER;

-- privilèges sur la table BORDBASS

grant select on PSUDDAT.BORDBASS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BORDBASS_AR to DPM_FONCIER;

-- privilèges sur la table BORDMER

grant select on PSUDDAT.BORDMER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BORDMER_AR to DPM_FONCIER;

-- privilèges sur la table CASCADE

grant select on PSUDDAT.CASCADE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CASCADE_AR to DPM_FONCIER;

-- privilèges sur la table CHENAL

grant select on PSUDDAT.CHENAL to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CHENAL_AR to DPM_FONCIER;

-- privilèges sur la table COTINOND

grant select on PSUDDAT.COTINOND to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.COTINOND_AR to DPM_FONCIER;

-- privilèges sur la table COURDEAU

grant select on PSUDDAT.COURDEAU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.COURDEAU_AR to DPM_FONCIER;

-- privilèges sur la table MER

grant select on PSUDDAT.MER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.MER_AR to DPM_FONCIER;

-- privilèges sur la table PCOURDO

grant select on PSUDDAT.PCOURDO to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PCOURDO_AR to DPM_FONCIER;

-- privilèges sur la table PLAGE

grant select on PSUDDAT.PLAGE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PLAGE_AR to DPM_FONCIER;

-- privilèges sur la table PLANDEAU

grant select on PSUDDAT.PLANDEAU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PLANDEAU_AR to DPM_FONCIER;

-- privilèges sur la table PLATIER

grant select on PSUDDAT.PLATIER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PLATIER_AR to DPM_FONCIER;

-- privilèges sur la table SOURCE

grant select on PSUDDAT.SOURCE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.SOURCE_AR to DPM_FONCIER;

-- privilèges sur la table O_APBTS

grant select on PSUDDAT.O_APBTS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.O_APBTS_AR to DPM_FONCIER;

-- privilèges sur la table O_ARMOI

grant select on PSUDDAT.O_ARMOI to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.O_ARMOI_AR to DPM_FONCIER;

-- privilèges sur la table O_BORNE

grant select on PSUDDAT.O_BORNE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.O_BORNE_AR to DPM_FONCIER;

-- privilèges sur la table O_CABINE

grant select on PSUDDAT.O_CABINE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.O_CABINE_AR to DPM_FONCIER;

-- privilèges sur la table O_CHAMBR

grant select on PSUDDAT.O_CHAMBR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.O_CHAMBR_AR to DPM_FONCIER;

-- privilèges sur la table O_ENROBE

grant select on PSUDDAT.O_ENROBE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.O_ENROBE_AR to DPM_FONCIER;

-- privilèges sur la table O_REGARD

grant select on PSUDDAT.O_REGARD to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.O_REGARD_AR to DPM_FONCIER;

-- privilèges sur la table O_VENTIL

grant select on PSUDDAT.O_VENTIL to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.O_VENTIL_AR to DPM_FONCIER;

-- privilèges sur la table E_BOUCLE

grant select on PSUDDAT.E_BOUCLE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_BOUCLE_AR to DPM_FONCIER;

-- privilèges sur la table E_COMPTEUR

grant select on PSUDDAT.E_COMPTEUR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_COMPTEUR_AR to DPM_FONCIER;

-- privilèges sur la table E_INCENDIE

grant select on PSUDDAT.E_INCENDIE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_INCENDIE_AR to DPM_FONCIER;

-- privilèges sur la table E_REGARD

grant select on PSUDDAT.E_REGARD to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_REGARD_AR to DPM_FONCIER;

-- privilèges sur la table E_TRONCO

grant select on PSUDDAT.E_TRONCO to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_TRONCO_AR to DPM_FONCIER;

-- privilèges sur la table BBATPS

grant select on PSUDDAT.BBATPS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BBATPS_AR to DPM_FONCIER;

-- privilèges sur la table BLOCROC

grant select on PSUDDAT.BLOCROC to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BLOCROC_AR to DPM_FONCIER;

-- privilèges sur la table COURBE

grant select on PSUDDAT.COURBE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.COURBE_AR to DPM_FONCIER;

-- privilèges sur la table DOLINE

grant select on PSUDDAT.DOLINE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.DOLINE_AR to DPM_FONCIER;

-- privilèges sur la table EBOULIS

grant select on PSUDDAT.EBOULIS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.EBOULIS_AR to DPM_FONCIER;

-- privilèges sur la table EXCAVART

grant select on PSUDDAT.EXCAVART to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.EXCAVART_AR to DPM_FONCIER;

-- privilèges sur la table FALAISE

grant select on PSUDDAT.FALAISE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FALAISE_AR to DPM_FONCIER;

-- privilèges sur la table LIGCRETE

grant select on PSUDDAT.LIGCRETE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.LIGCRETE_AR to DPM_FONCIER;

-- privilèges sur la table LIGTALWEG

grant select on PSUDDAT.LIGTALWEG to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.LIGTALWEG_AR to DPM_FONCIER;

-- privilèges sur la table PT_COTE

grant select on PSUDDAT.PT_COTE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PT_COTE_AR to DPM_FONCIER;

-- privilèges sur la table ROCHER

grant select on PSUDDAT.ROCHER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ROCHER_AR to DPM_FONCIER;

-- privilèges sur la table TALUS

grant select on PSUDDAT.TALUS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TALUS_AR to DPM_FONCIER;

-- privilèges sur la table DEPRESS

grant select on PSUDDAT.DEPRESS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.DEPRESS_AR to DPM_FONCIER;

-- privilèges sur la table BT_COFR

grant select on PSUDDAT.BT_COFR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BT_COFR_AR to DPM_FONCIER;

-- privilèges sur la table CANDELAB

grant select on PSUDDAT.CANDELAB to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CANDELAB_AR to DPM_FONCIER;

-- privilèges sur la table EL_GENPHO

grant select on PSUDDAT.EL_GENPHO to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.EL_GENPHO_AR to DPM_FONCIER;

-- privilèges sur la table ELEC_CPT

grant select on PSUDDAT.ELEC_CPT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ELEC_CPT_AR to DPM_FONCIER;

-- privilèges sur la table ELEC_REG

grant select on PSUDDAT.ELEC_REG to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ELEC_REG_AR to DPM_FONCIER;

-- privilèges sur la table MT_TRANS

grant select on PSUDDAT.MT_TRANS to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.MT_TRANS_AR to DPM_FONCIER;

-- privilèges sur la table POSTEH61

grant select on PSUDDAT.POSTEH61 to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.POSTEH61_AR to DPM_FONCIER;

-- privilèges sur la table P_URB

grant select on PSUDDAT.P_URB to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.P_URB_AR to DPM_FONCIER;

-- privilèges sur la table PROVINCE

grant select on PSUDDAT.PROVINCE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PROVINCE_AR to DPM_FONCIER;

-- privilèges sur la table ORTHO_PSUD

grant select on PSUDDAT.ORTHO_PSUD to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ORTHO_PSUD_AR to DPM_FONCIER;

-- privilèges sur la table ORTHO_SERAIL

grant select on PSUDDAT.ORTHO_SERAIL to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ORTHO_SERAIL_AR to DPM_FONCIER;

-- privilèges sur la table RASTER10

grant select on PSUDDAT.RASTER10 to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.RASTER10_AR to DPM_FONCIER;

-- privilèges sur la table SATELLITE

grant select on PSUDDAT.SATELLITE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.SATELLITE_AR to DPM_FONCIER;

-- privilèges sur la table ORTHO_DITTT

grant select on PSUDDAT.ORTHO_DITTT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ORTHO_DITTT_AR to DPM_FONCIER;

-- privilèges sur la table DIVERS_MNT

grant select on PSUDDAT.DIVERS_MNT to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.DIVERS_MNT_AR to DPM_FONCIER;

-- privilèges sur la table TEMPO_L

grant select,insert,delete,update on PSUDDAT.TEMPO_L to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TEMPO_L_AR to DPM_FONCIER;
grant select on PSUDDAT.TEMPO_L_SEQ to DPM_FONCIER;

-- privilèges sur la table TEMPO_P

grant select,insert,delete,update on PSUDDAT.TEMPO_P to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TEMPO_P_AR to DPM_FONCIER;
grant select on PSUDDAT.TEMPO_P_SEQ to DPM_FONCIER;

-- privilèges sur la table TEMPO_S

grant select,insert,delete,update on PSUDDAT.TEMPO_S to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TEMPO_S_AR to DPM_FONCIER;
grant select on PSUDDAT.TEMPO_S_SEQ to DPM_FONCIER;

-- privilèges sur la table ZONEBLOK

grant select on PSUDDAT.ZONEBLOK to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ZONEBLOK_AR to DPM_FONCIER;

-- privilèges sur la table BALISMAR

grant select on PSUDDAT.BALISMAR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BALISMAR_AR to DPM_FONCIER;

-- privilèges sur la table EPAVE

grant select on PSUDDAT.EPAVE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.EPAVE_AR to DPM_FONCIER;

-- privilèges sur la table HERBIER

grant select on PSUDDAT.HERBIER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.HERBIER_AR to DPM_FONCIER;

-- privilèges sur la table ISOBATHE

grant select on PSUDDAT.ISOBATHE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.ISOBATHE_AR to DPM_FONCIER;

-- privilèges sur la table PALETUVIER

grant select on PSUDDAT.PALETUVIER to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PALETUVIER_AR to DPM_FONCIER;

-- privilèges sur la table PINACORA

grant select on PSUDDAT.PINACORA to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PINACORA_AR to DPM_FONCIER;

-- privilèges sur la table SONDE

grant select on PSUDDAT.SONDE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.SONDE_AR to DPM_FONCIER;

-- privilèges sur la table CABAE

grant select on PSUDDAT.CABAE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CABAE_AR to DPM_FONCIER;

-- privilèges sur la table BOITE

grant select on PSUDDAT.BOITE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BOITE_AR to DPM_FONCIER;

-- privilèges sur la table BRANCH

grant select on PSUDDAT.BRANCH to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.BRANCH_AR to DPM_FONCIER;

-- privilèges sur la table CABLE

grant select on PSUDDAT.CABLE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CABLE_AR to DPM_FONCIER;

-- privilèges sur la table CONDUITE

grant select on PSUDDAT.CONDUITE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.CONDUITE_AR to DPM_FONCIER;

-- privilèges sur la table E_LAMPE

grant select on PSUDDAT.E_LAMPE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_LAMPE_AR to DPM_FONCIER;

-- privilèges sur la table E_PURGE

grant select on PSUDDAT.E_PURGE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_PURGE_AR to DPM_FONCIER;

-- privilèges sur la table E_RACCOR

grant select on PSUDDAT.E_RACCOR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_RACCOR_AR to DPM_FONCIER;

-- privilèges sur la table E_VANNE

grant select on PSUDDAT.E_VANNE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_VANNE_AR to DPM_FONCIER;

-- privilèges sur la table E_VENTOU

grant select on PSUDDAT.E_VENTOU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.E_VENTOU_AR to DPM_FONCIER;

-- privilèges sur la table EL_CHAMB

grant select on PSUDDAT.EL_CHAMB to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.EL_CHAMB_AR to DPM_FONCIER;

-- privilèges sur la table EMPRISE

grant select on PSUDDAT.EMPRISE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.EMPRISE_AR to DPM_FONCIER;

-- privilèges sur la table FOURREAU

grant select on PSUDDAT.FOURREAU to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.FOURREAU_AR to DPM_FONCIER;

-- privilèges sur la table INTERRUPTEUR

grant select on PSUDDAT.INTERRUPTEUR to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.INTERRUPTEUR_AR to DPM_FONCIER;

-- privilèges sur la table O_MURET

grant select on PSUDDAT.O_MURET to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.O_MURET_AR to DPM_FONCIER;

-- privilèges sur la table PIECE

grant select on PSUDDAT.PIECE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.PIECE_AR to DPM_FONCIER;

-- privilèges sur la table TERRE

grant select on PSUDDAT.TERRE to DPM_FONCIER;
grant select,insert,delete,update on PSUDDAT.TERRE_AR to DPM_FONCIER;

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
       ' to DPM_FONCIER';
    execute immediate req;
  END LOOP;
end;
/

-- privilèges sur les vues pour l'indexation spatiale

grant SELECT ON SYS.DBA_VIEWS to DPM_FONCIER;

-- on redonne le rôle DPM_FONCIER aux utilisateurs sauvegardés

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.GrantSavedGrantee_role (''DPM_FONCIER'')';
  exception
    when others then
    null;
end;
/


commit;

