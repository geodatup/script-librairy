
-- sauvegarde des utilisateurs associés au role DITTT_CARTO

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.SaveGrantee_role (''DITTT_CARTO'')';
  exception
    when others then
    null;
end;
/
begin
  execute immediate 'drop role DITTT_CARTO';
  exception
    when others then
    null;
end;
/
create role DITTT_CARTO not identified;
declare
  luser varchar2(80);
begin
  select user into luser from dual;
  execute immediate 'revoke DITTT_CARTO from '||luser;
end;
/

-- privilèges pour le schéma de l'instance APICADM

grant select on APICADM.APIC_BD_CATALOG to DITTT_CARTO;

-- privilèges pour le schéma du modèle PSUDCAT

grant select on PSUDCAT.APIC_BASE to DITTT_CARTO;
grant select on PSUDCAT.APIC_CLASS_MCD to DITTT_CARTO;
grant select on PSUDCAT.STCA_ROLE to DITTT_CARTO;
grant select on PSUDCAT.APIC_USER to DITTT_CARTO;
grant select on PSUDCAT.APIC_USER_ROLE to DITTT_CARTO;
grant select on PSUDCAT.STCA_PRODUCT to DITTT_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_PUBLICATION to DITTT_CARTO;
grant select on PSUDCAT.STCA_PA_TYPE to DITTT_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_PARAM to DITTT_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_PA_NAME to DITTT_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_BINARY_PARAM to DITTT_CARTO;
grant select on PSUDCAT.STCA_PAT_PRO to DITTT_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_RO_PA to DITTT_CARTO;
grant select,insert,delete,update on PSUDCAT.STCA_ETAT_USER to DITTT_CARTO;
grant select on PSUDCAT.STCA_ETAT_ROLE to DITTT_CARTO;
grant select on PSUDCAT.PARAM_SEQ_ID to DITTT_CARTO;
grant select on PSUDCAT.PUBLI_SEQ_ID to DITTT_CARTO;

-- privilèges pour le schéma de la base DITTTDAT

grant select,insert,delete,update on DITTTDAT.APIC_CLASS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.APIC_STATE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.APIC_HIERARCH to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.APIC_TRANSACTION to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.APIC_SCHEMA to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.APIC_SCHEMA_RELATION to DITTT_CARTO;
grant select on DITTTDAT.SEQ_APIC_TRANSACTION to DITTT_CARTO;
grant select on DITTTDAT.APIC_SCHEMA_SEQ to DITTT_CARTO;

-- privilèges sur la table ARBRE

grant select on DITTTDAT.ARBRE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ARBRE_AR to DITTT_CARTO;

-- privilèges sur la table PLANTALI

grant select on DITTTDAT.PLANTALI to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PLANTALI_AR to DITTT_CARTO;

-- privilèges sur la table PREMVEG

grant select on DITTTDAT.PREMVEG to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PREMVEG_AR to DITTT_CARTO;

-- privilèges sur la table SURFVEGE

grant select on DITTTDAT.SURFVEGE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.SURFVEGE_AR to DITTT_CARTO;

-- privilèges sur la table CENTPARC

grant select on DITTTDAT.CENTPARC to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CENTPARC_AR to DITTT_CARTO;

-- privilèges sur la table FACE

grant select on DITTTDAT.FACE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FACE_AR to DITTT_CARTO;

-- privilèges sur la table FILOT

grant select on DITTTDAT.FILOT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FILOT_AR to DITTT_CARTO;

-- privilèges sur la table FLOCA

grant select on DITTTDAT.FLOCA to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FLOCA_AR to DITTT_CARTO;

-- privilèges sur la table FLUV

grant select on DITTTDAT.FLUV to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FLUV_AR to DITTT_CARTO;

-- privilèges sur la table FMAR

grant select on DITTTDAT.FMAR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FMAR_AR to DITTT_CARTO;

-- privilèges sur la table FPROJ

grant select on DITTTDAT.FPROJ to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FPROJ_AR to DITTT_CARTO;

-- privilèges sur la table FREPST

grant select on DITTTDAT.FREPST to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FREPST_AR to DITTT_CARTO;

-- privilèges sur la table FRESER

grant select on DITTTDAT.FRESER to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FRESER_AR to DITTT_CARTO;

-- privilèges sur la table FSERV

grant select on DITTTDAT.FSERV to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FSERV_AR to DITTT_CARTO;

-- privilèges sur la table FVOIE

grant select on DITTTDAT.FVOIE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FVOIE_AR to DITTT_CARTO;

-- privilèges sur la table PARCELLE

grant select on DITTTDAT.PARCELLE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PARCELLE_AR to DITTT_CARTO;

-- privilèges sur la table PARCPROV

grant select on DITTTDAT.PARCPROV to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PARCPROV_AR to DITTT_CARTO;

-- privilèges sur la table QUARTIER

grant select on DITTTDAT.QUARTIER to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.QUARTIER_AR to DITTT_CARTO;

-- privilèges sur la table SOMPAR

grant select on DITTTDAT.SOMPAR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.SOMPAR_AR to DITTT_CARTO;

-- privilèges sur la table COMMUNE

grant select on DITTTDAT.COMMUNE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.COMMUNE_AR to DITTT_CARTO;

-- privilèges sur la table FICHEINFRA

grant select on DITTTDAT.FICHEINFRA to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FICHEINFRA_AR to DITTT_CARTO;

-- privilèges sur la table GEOD

grant select on DITTTDAT.GEOD to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.GEOD_AR to DITTT_CARTO;

-- privilèges sur la table GEOREP

grant select on DITTTDAT.GEOREP to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.GEOREP_AR to DITTT_CARTO;

-- privilèges sur la table GNIREP

grant select on DITTTDAT.GNIREP to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.GNIREP_AR to DITTT_CARTO;

-- privilèges sur la table GNIV

grant select on DITTTDAT.GNIV to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.GNIV_AR to DITTT_CARTO;

-- privilèges sur la table GPOL

grant select on DITTTDAT.GPOL to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.GPOL_AR to DITTT_CARTO;

-- privilèges sur la table GPOREP

grant select on DITTTDAT.GPOREP to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.GPOREP_AR to DITTT_CARTO;

-- privilèges sur la table HINFRA

grant select on DITTTDAT.HINFRA to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.HINFRA_AR to DITTT_CARTO;

-- privilèges sur la table TEXTEINFRA

grant select on DITTTDAT.TEXTEINFRA to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TEXTEINFRA_AR to DITTT_CARTO;

-- privilèges sur la table ANTENNE

grant select on DITTTDAT.ANTENNE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ANTENNE_AR to DITTT_CARTO;

-- privilèges sur la table BALIAERO

grant select on DITTTDAT.BALIAERO to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BALIAERO_AR to DITTT_CARTO;

-- privilèges sur la table BATIMENT

grant select on DITTTDAT.BATIMENT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BATIMENT_AR to DITTT_CARTO;

-- privilèges sur la table BSLETTRE

grant select on DITTTDAT.BSLETTRE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BSLETTRE_AR to DITTT_CARTO;

-- privilèges sur la table CIMETIER

grant select on DITTTDAT.CIMETIER to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CIMETIER_AR to DITTT_CARTO;

-- privilèges sur la table CONDUFOR

grant select on DITTTDAT.CONDUFOR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CONDUFOR_AR to DITTT_CARTO;

-- privilèges sur la table DEPOTOIR

grant select on DITTTDAT.DEPOTOIR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.DEPOTOIR_AR to DITTT_CARTO;

-- privilèges sur la table EAUARTIF

grant select on DITTTDAT.EAUARTIF to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.EAUARTIF_AR to DITTT_CARTO;

-- privilèges sur la table ENROCHEMENT

grant select on DITTTDAT.ENROCHEMENT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ENROCHEMENT_AR to DITTT_CARTO;

-- privilèges sur la table EOLIENNE

grant select on DITTTDAT.EOLIENNE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.EOLIENNE_AR to DITTT_CARTO;

-- privilèges sur la table FACADE

grant select on DITTTDAT.FACADE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FACADE_AR to DITTT_CARTO;

-- privilèges sur la table FEUSIGNA

grant select on DITTTDAT.FEUSIGNA to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FEUSIGNA_AR to DITTT_CARTO;

-- privilèges sur la table H_VANNE

grant select on DITTTDAT.H_VANNE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.H_VANNE_AR to DITTT_CARTO;

-- privilèges sur la table HELIPORT

grant select on DITTTDAT.HELIPORT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.HELIPORT_AR to DITTT_CARTO;

-- privilèges sur la table ILOTBP

grant select on DITTTDAT.ILOTBP to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ILOTBP_AR to DITTT_CARTO;

-- privilèges sur la table LIMSPORT

grant select on DITTTDAT.LIMSPORT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.LIMSPORT_AR to DITTT_CARTO;

-- privilèges sur la table LINAERO

grant select on DITTTDAT.LINAERO to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.LINAERO_AR to DITTT_CARTO;

-- privilèges sur la table MONUMENT

grant select on DITTTDAT.MONUMENT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.MONUMENT_AR to DITTT_CARTO;

-- privilèges sur la table OUVARTLI

grant select on DITTTDAT.OUVARTLI to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.OUVARTLI_AR to DITTT_CARTO;

-- privilèges sur la table OUVRDART

grant select on DITTTDAT.OUVRDART to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.OUVRDART_AR to DITTT_CARTO;

-- privilèges sur la table PIPELINE

grant select on DITTTDAT.PIPELINE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PIPELINE_AR to DITTT_CARTO;

-- privilèges sur la table PISBOEUF

grant select on DITTTDAT.PISBOEUF to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PISBOEUF_AR to DITTT_CARTO;

-- privilèges sur la table PISCINE

grant select on DITTTDAT.PISCINE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PISCINE_AR to DITTT_CARTO;

-- privilèges sur la table PISTAERO

grant select on DITTTDAT.PISTAERO to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PISTAERO_AR to DITTT_CARTO;

-- privilèges sur la table PORTDRAP

grant select on DITTTDAT.PORTDRAP to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PORTDRAP_AR to DITTT_CARTO;

-- privilèges sur la table POTOBATI

grant select on DITTTDAT.POTOBATI to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.POTOBATI_AR to DITTT_CARTO;

-- privilèges sur la table RESERHYD

grant select on DITTTDAT.RESERHYD to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.RESERHYD_AR to DITTT_CARTO;

-- privilèges sur la table RUINE

grant select on DITTTDAT.RUINE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.RUINE_AR to DITTT_CARTO;

-- privilèges sur la table SOUTENEMENT

grant select on DITTTDAT.SOUTENEMENT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.SOUTENEMENT_AR to DITTT_CARTO;

-- privilèges sur la table STAMETEO

grant select on DITTTDAT.STAMETEO to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.STAMETEO_AR to DITTT_CARTO;

-- privilèges sur la table STATUE

grant select on DITTTDAT.STATUE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.STATUE_AR to DITTT_CARTO;

-- privilèges sur la table STOCKEAU

grant select on DITTTDAT.STOCKEAU to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.STOCKEAU_AR to DITTT_CARTO;

-- privilèges sur la table STOCKMIN

grant select on DITTTDAT.STOCKMIN to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.STOCKMIN_AR to DITTT_CARTO;

-- privilèges sur la table TOMBE

grant select on DITTTDAT.TOMBE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TOMBE_AR to DITTT_CARTO;

-- privilèges sur la table TRANSMIN

grant select on DITTTDAT.TRANSMIN to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TRANSMIN_AR to DITTT_CARTO;

-- privilèges sur la table TSPORTS

grant select on DITTTDAT.TSPORTS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TSPORTS_AR to DITTT_CARTO;

-- privilèges sur la table UNITEPROD

grant select on DITTTDAT.UNITEPROD to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.UNITEPROD_AR to DITTT_CARTO;

-- privilèges sur la table ABRIBUS

grant select on DITTTDAT.ABRIBUS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ABRIBUS_AR to DITTT_CARTO;

-- privilèges sur la table AIRESTAT

grant select on DITTTDAT.AIRESTAT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.AIRESTAT_AR to DITTT_CARTO;

-- privilèges sur la table ALPIETAM

grant select on DITTTDAT.ALPIETAM to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ALPIETAM_AR to DITTT_CARTO;

-- privilèges sur la table ARCEAU

grant select on DITTTDAT.ARCEAU to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ARCEAU_AR to DITTT_CARTO;

-- privilèges sur la table BALISVOI

grant select on DITTTDAT.BALISVOI to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BALISVOI_AR to DITTT_CARTO;

-- privilèges sur la table BANC

grant select on DITTTDAT.BANC to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BANC_AR to DITTT_CARTO;

-- privilèges sur la table BLOCSAN

grant select on DITTTDAT.BLOCSAN to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BLOCSAN_AR to DITTT_CARTO;

-- privilèges sur la table BORDTROT

grant select on DITTTDAT.BORDTROT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BORDTROT_AR to DITTT_CARTO;

-- privilèges sur la table BORNANTI

grant select on DITTTDAT.BORNANTI to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BORNANTI_AR to DITTT_CARTO;

-- privilèges sur la table BORNELUM

grant select on DITTTDAT.BORNELUM to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BORNELUM_AR to DITTT_CARTO;

-- privilèges sur la table BORNRP

grant select on DITTTDAT.BORNRP to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BORNRP_AR to DITTT_CARTO;

-- privilèges sur la table CAPTEUR

grant select on DITTTDAT.CAPTEUR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CAPTEUR_AR to DITTT_CARTO;

-- privilèges sur la table DRAINACC

grant select on DITTTDAT.DRAINACC to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.DRAINACC_AR to DITTT_CARTO;

-- privilèges sur la table ENTCHAR

grant select on DITTTDAT.ENTCHAR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ENTCHAR_AR to DITTT_CARTO;

-- privilèges sur la table FEUX

grant select on DITTTDAT.FEUX to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FEUX_AR to DITTT_CARTO;

-- privilèges sur la table FLECPEIN

grant select on DITTTDAT.FLECPEIN to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FLECPEIN_AR to DITTT_CARTO;

-- privilèges sur la table GLISSECU

grant select on DITTTDAT.GLISSECU to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.GLISSECU_AR to DITTT_CARTO;

-- privilèges sur la table GUE

grant select on DITTTDAT.GUE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.GUE_AR to DITTT_CARTO;

-- privilèges sur la table HORODATE

grant select on DITTTDAT.HORODATE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.HORODATE_AR to DITTT_CARTO;

-- privilèges sur la table PANNEAU

grant select on DITTTDAT.PANNEAU to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PANNEAU_AR to DITTT_CARTO;

-- privilèges sur la table PANOPUB

grant select on DITTTDAT.PANOPUB to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PANOPUB_AR to DITTT_CARTO;

-- privilèges sur la table PASSEREL

grant select on DITTTDAT.PASSEREL to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PASSEREL_AR to DITTT_CARTO;

-- privilèges sur la table PASSPIET

grant select on DITTTDAT.PASSPIET to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PASSPIET_AR to DITTT_CARTO;

-- privilèges sur la table POUBELLE

grant select on DITTTDAT.POUBELLE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.POUBELLE_AR to DITTT_CARTO;

-- privilèges sur la table RALENTIS

grant select on DITTTDAT.RALENTIS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.RALENTIS_AR to DITTT_CARTO;

-- privilèges sur la table SENTIER

grant select on DITTTDAT.SENTIER to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.SENTIER_AR to DITTT_CARTO;

-- privilèges sur la table SIGARMOI

grant select on DITTTDAT.SIGARMOI to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.SIGARMOI_AR to DITTT_CARTO;

-- privilèges sur la table SIGNHOR

grant select on DITTTDAT.SIGNHOR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.SIGNHOR_AR to DITTT_CARTO;

-- privilèges sur la table TEXTPEIN

grant select on DITTTDAT.TEXTPEIN to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TEXTPEIN_AR to DITTT_CARTO;

-- privilèges sur la table VOIACCES

grant select on DITTTDAT.VOIACCES to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.VOIACCES_AR to DITTT_CARTO;

-- privilèges sur la table ZEBRA

grant select on DITTTDAT.ZEBRA to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ZEBRA_AR to DITTT_CARTO;

-- privilèges sur la table ZONARBUS

grant select on DITTTDAT.ZONARBUS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ZONARBUS_AR to DITTT_CARTO;

-- privilèges sur la table PLATFORM

grant select on DITTTDAT.PLATFORM to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PLATFORM_AR to DITTT_CARTO;

-- privilèges sur la table META_DITTT

grant select on DITTTDAT.META_DITTT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.META_DITTT_AR to DITTT_CARTO;

-- privilèges sur la table P10000

grant select on DITTTDAT.P10000 to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.P10000_AR to DITTT_CARTO;

-- privilèges sur la table P12500

grant select on DITTTDAT.P12500 to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.P12500_AR to DITTT_CARTO;

-- privilèges sur la table P2000

grant select on DITTTDAT.P2000 to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.P2000_AR to DITTT_CARTO;

-- privilèges sur la table P500

grant select on DITTTDAT.P500 to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.P500_AR to DITTT_CARTO;

-- privilèges sur la table P50000

grant select on DITTTDAT.P50000 to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.P50000_AR to DITTT_CARTO;

-- privilèges sur la table A_AXECOU

grant select on DITTTDAT.A_AXECOU to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.A_AXECOU_AR to DITTT_CARTO;

-- privilèges sur la table A_AXEFOS

grant select on DITTTDAT.A_AXEFOS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.A_AXEFOS_AR to DITTT_CARTO;

-- privilèges sur la table A_BASVER

grant select on DITTTDAT.A_BASVER to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.A_BASVER_AR to DITTT_CARTO;

-- privilèges sur la table A_CANIV

grant select on DITTTDAT.A_CANIV to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.A_CANIV_AR to DITTT_CARTO;

-- privilèges sur la table A_GRISUR

grant select on DITTTDAT.A_GRISUR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.A_GRISUR_AR to DITTT_CARTO;

-- privilèges sur la table A_PURGE

grant select on DITTTDAT.A_PURGE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.A_PURGE_AR to DITTT_CARTO;

-- privilèges sur la table A_RACCORD

grant select on DITTTDAT.A_RACCORD to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.A_RACCORD_AR to DITTT_CARTO;

-- privilèges sur la table A_REGARD

grant select on DITTTDAT.A_REGARD to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.A_REGARD_AR to DITTT_CARTO;

-- privilèges sur la table A_VENTOU

grant select on DITTTDAT.A_VENTOU to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.A_VENTOU_AR to DITTT_CARTO;

-- privilèges sur la table BUSE

grant select on DITTTDAT.BUSE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BUSE_AR to DITTT_CARTO;

-- privilèges sur la table OUVRTETE

grant select on DITTTDAT.OUVRTETE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.OUVRTETE_AR to DITTT_CARTO;

-- privilèges sur la table DIVERS_L

grant select on DITTTDAT.DIVERS_L to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.DIVERS_L_AR to DITTT_CARTO;

-- privilèges sur la table DIVERS_P

grant select on DITTTDAT.DIVERS_P to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.DIVERS_P_AR to DITTT_CARTO;

-- privilèges sur la table DIVERS_S

grant select on DITTTDAT.DIVERS_S to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.DIVERS_S_AR to DITTT_CARTO;

-- privilèges sur la table HINFO

grant select on DITTTDAT.HINFO to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.HINFO_AR to DITTT_CARTO;

-- privilèges sur la table HNMRIV

grant select on DITTTDAT.HNMRIV to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.HNMRIV_AR to DITTT_CARTO;

-- privilèges sur la table HRUE

grant select on DITTTDAT.HRUE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.HRUE_AR to DITTT_CARTO;

-- privilèges sur la table HTPNYM

grant select on DITTTDAT.HTPNYM to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.HTPNYM_AR to DITTT_CARTO;

-- privilèges sur la table LEVE

grant select on DITTTDAT.LEVE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.LEVE_AR to DITTT_CARTO;

-- privilèges sur la table LIMRES

grant select on DITTTDAT.LIMRES to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.LIMRES_AR to DITTT_CARTO;

-- privilèges sur la table PTLEVE

grant select on DITTTDAT.PTLEVE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PTLEVE_AR to DITTT_CARTO;

-- privilèges sur la table RAX500

grant select on DITTTDAT.RAX500 to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.RAX500_AR to DITTT_CARTO;

-- privilèges sur la table S

grant select on DITTTDAT.S to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.S_AR to DITTT_CARTO;

-- privilèges sur la table CLICHE

grant select on DITTTDAT.CLICHE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CLICHE_AR to DITTT_CARTO;

-- privilèges sur la table CLOTURE

grant select on DITTTDAT.CLOTURE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CLOTURE_AR to DITTT_CARTO;

-- privilèges sur la table JEUXENF

grant select on DITTTDAT.JEUXENF to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.JEUXENF_AR to DITTT_CARTO;

-- privilèges sur la table MUR

grant select on DITTTDAT.MUR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.MUR_AR to DITTT_CARTO;

-- privilèges sur la table MURSURF

grant select on DITTTDAT.MURSURF to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.MURSURF_AR to DITTT_CARTO;

-- privilèges sur la table PARCJEUX

grant select on DITTTDAT.PARCJEUX to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PARCJEUX_AR to DITTT_CARTO;

-- privilèges sur la table PORTAIL

grant select on DITTTDAT.PORTAIL to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PORTAIL_AR to DITTT_CARTO;

-- privilèges sur la table ARMIX

grant select on DITTTDAT.ARMIX to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ARMIX_AR to DITTT_CARTO;

-- privilèges sur la table ARMOIRE

grant select on DITTTDAT.ARMOIRE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ARMOIRE_AR to DITTT_CARTO;

-- privilèges sur la table POTEAU

grant select on DITTTDAT.POTEAU to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.POTEAU_AR to DITTT_CARTO;

-- privilèges sur la table POTOMIX

grant select on DITTTDAT.POTOMIX to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.POTOMIX_AR to DITTT_CARTO;

-- privilèges sur la table REGARD

grant select on DITTTDAT.REGARD to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.REGARD_AR to DITTT_CARTO;

-- privilèges sur la table REGMIX

grant select on DITTTDAT.REGMIX to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.REGMIX_AR to DITTT_CARTO;

-- privilèges sur la table TRANCHEE

grant select on DITTTDAT.TRANCHEE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TRANCHEE_AR to DITTT_CARTO;

-- privilèges sur la table BALLUV

grant select on DITTTDAT.BALLUV to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BALLUV_AR to DITTT_CARTO;

-- privilèges sur la table BARCORAI

grant select on DITTTDAT.BARCORAI to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BARCORAI_AR to DITTT_CARTO;

-- privilèges sur la table BORDBASS

grant select on DITTTDAT.BORDBASS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BORDBASS_AR to DITTT_CARTO;

-- privilèges sur la table BORDMER

grant select on DITTTDAT.BORDMER to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BORDMER_AR to DITTT_CARTO;

-- privilèges sur la table CASCADE

grant select on DITTTDAT.CASCADE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CASCADE_AR to DITTT_CARTO;

-- privilèges sur la table CHENAL

grant select on DITTTDAT.CHENAL to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CHENAL_AR to DITTT_CARTO;

-- privilèges sur la table COTINOND

grant select on DITTTDAT.COTINOND to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.COTINOND_AR to DITTT_CARTO;

-- privilèges sur la table COURDEAU

grant select on DITTTDAT.COURDEAU to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.COURDEAU_AR to DITTT_CARTO;

-- privilèges sur la table MER

grant select on DITTTDAT.MER to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.MER_AR to DITTT_CARTO;

-- privilèges sur la table PCOURDO

grant select on DITTTDAT.PCOURDO to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PCOURDO_AR to DITTT_CARTO;

-- privilèges sur la table PLAGE

grant select on DITTTDAT.PLAGE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PLAGE_AR to DITTT_CARTO;

-- privilèges sur la table PLANDEAU

grant select on DITTTDAT.PLANDEAU to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PLANDEAU_AR to DITTT_CARTO;

-- privilèges sur la table PLATIER

grant select on DITTTDAT.PLATIER to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PLATIER_AR to DITTT_CARTO;

-- privilèges sur la table SOURCE

grant select on DITTTDAT.SOURCE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.SOURCE_AR to DITTT_CARTO;

-- privilèges sur la table O_APBTS

grant select on DITTTDAT.O_APBTS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.O_APBTS_AR to DITTT_CARTO;

-- privilèges sur la table O_ARMOI

grant select on DITTTDAT.O_ARMOI to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.O_ARMOI_AR to DITTT_CARTO;

-- privilèges sur la table O_BORNE

grant select on DITTTDAT.O_BORNE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.O_BORNE_AR to DITTT_CARTO;

-- privilèges sur la table O_CABINE

grant select on DITTTDAT.O_CABINE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.O_CABINE_AR to DITTT_CARTO;

-- privilèges sur la table O_CHAMBR

grant select on DITTTDAT.O_CHAMBR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.O_CHAMBR_AR to DITTT_CARTO;

-- privilèges sur la table O_ENROBE

grant select on DITTTDAT.O_ENROBE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.O_ENROBE_AR to DITTT_CARTO;

-- privilèges sur la table O_REGARD

grant select on DITTTDAT.O_REGARD to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.O_REGARD_AR to DITTT_CARTO;

-- privilèges sur la table O_VENTIL

grant select on DITTTDAT.O_VENTIL to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.O_VENTIL_AR to DITTT_CARTO;

-- privilèges sur la table E_BOUCLE

grant select on DITTTDAT.E_BOUCLE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.E_BOUCLE_AR to DITTT_CARTO;

-- privilèges sur la table E_COMPTEUR

grant select on DITTTDAT.E_COMPTEUR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.E_COMPTEUR_AR to DITTT_CARTO;

-- privilèges sur la table E_INCENDIE

grant select on DITTTDAT.E_INCENDIE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.E_INCENDIE_AR to DITTT_CARTO;

-- privilèges sur la table E_REGARD

grant select on DITTTDAT.E_REGARD to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.E_REGARD_AR to DITTT_CARTO;

-- privilèges sur la table E_TRONCO

grant select on DITTTDAT.E_TRONCO to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.E_TRONCO_AR to DITTT_CARTO;

-- privilèges sur la table BBATPS

grant select on DITTTDAT.BBATPS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BBATPS_AR to DITTT_CARTO;

-- privilèges sur la table BLOCROC

grant select on DITTTDAT.BLOCROC to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BLOCROC_AR to DITTT_CARTO;

-- privilèges sur la table COURBE

grant select on DITTTDAT.COURBE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.COURBE_AR to DITTT_CARTO;

-- privilèges sur la table DEPRESS

grant select on DITTTDAT.DEPRESS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.DEPRESS_AR to DITTT_CARTO;

-- privilèges sur la table DOLINE

grant select on DITTTDAT.DOLINE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.DOLINE_AR to DITTT_CARTO;

-- privilèges sur la table EBOULIS

grant select on DITTTDAT.EBOULIS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.EBOULIS_AR to DITTT_CARTO;

-- privilèges sur la table EXCAVART

grant select on DITTTDAT.EXCAVART to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.EXCAVART_AR to DITTT_CARTO;

-- privilèges sur la table FALAISE

grant select on DITTTDAT.FALAISE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.FALAISE_AR to DITTT_CARTO;

-- privilèges sur la table LIGCRETE

grant select on DITTTDAT.LIGCRETE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.LIGCRETE_AR to DITTT_CARTO;

-- privilèges sur la table LIGTALWEG

grant select on DITTTDAT.LIGTALWEG to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.LIGTALWEG_AR to DITTT_CARTO;

-- privilèges sur la table PT_COTE

grant select on DITTTDAT.PT_COTE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PT_COTE_AR to DITTT_CARTO;

-- privilèges sur la table ROCHER

grant select on DITTTDAT.ROCHER to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ROCHER_AR to DITTT_CARTO;

-- privilèges sur la table TALUS

grant select on DITTTDAT.TALUS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TALUS_AR to DITTT_CARTO;

-- privilèges sur la table BT_COFR

grant select on DITTTDAT.BT_COFR to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.BT_COFR_AR to DITTT_CARTO;

-- privilèges sur la table CANDELAB

grant select on DITTTDAT.CANDELAB to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CANDELAB_AR to DITTT_CARTO;

-- privilèges sur la table EL_GENPHO

grant select on DITTTDAT.EL_GENPHO to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.EL_GENPHO_AR to DITTT_CARTO;

-- privilèges sur la table ELEC_CPT

grant select on DITTTDAT.ELEC_CPT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ELEC_CPT_AR to DITTT_CARTO;

-- privilèges sur la table ELEC_REG

grant select on DITTTDAT.ELEC_REG to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ELEC_REG_AR to DITTT_CARTO;

-- privilèges sur la table MT_TRANS

grant select on DITTTDAT.MT_TRANS to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.MT_TRANS_AR to DITTT_CARTO;

-- privilèges sur la table POSTEH61

grant select on DITTTDAT.POSTEH61 to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.POSTEH61_AR to DITTT_CARTO;

-- privilèges sur la table P_URB

grant select on DITTTDAT.P_URB to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.P_URB_AR to DITTT_CARTO;

-- privilèges sur la table PROVINCE

grant select on DITTTDAT.PROVINCE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.PROVINCE_AR to DITTT_CARTO;

-- privilèges sur la table ORTHO_PSUD

grant select on DITTTDAT.ORTHO_PSUD to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ORTHO_PSUD_AR to DITTT_CARTO;

-- privilèges sur la table ORTHO_SERAIL

grant select on DITTTDAT.ORTHO_SERAIL to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ORTHO_SERAIL_AR to DITTT_CARTO;

-- privilèges sur la table RASTER10

grant select on DITTTDAT.RASTER10 to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.RASTER10_AR to DITTT_CARTO;

-- privilèges sur la table SATELLITE

grant select on DITTTDAT.SATELLITE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.SATELLITE_AR to DITTT_CARTO;

-- privilèges sur la table DIVERS_MNT

grant select on DITTTDAT.DIVERS_MNT to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.DIVERS_MNT_AR to DITTT_CARTO;

-- privilèges sur la table TEMPO_L

grant select on DITTTDAT.TEMPO_L to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TEMPO_L_AR to DITTT_CARTO;

-- privilèges sur la table TEMPO_P

grant select on DITTTDAT.TEMPO_P to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TEMPO_P_AR to DITTT_CARTO;

-- privilèges sur la table TEMPO_S

grant select on DITTTDAT.TEMPO_S to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.TEMPO_S_AR to DITTT_CARTO;

-- privilèges sur la table ZONEBLOK

grant select on DITTTDAT.ZONEBLOK to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.ZONEBLOK_AR to DITTT_CARTO;

-- privilèges sur la table CABAE

grant select on DITTTDAT.CABAE to DITTT_CARTO;
grant select,insert,delete,update on DITTTDAT.CABAE_AR to DITTT_CARTO;

-- privilèges sur les tables d'index

declare
  req varchar2(500);
  cursor c1 is
    select SDO_INDEX_OWNER,SDO_INDEX_TABLE
    from ALL_SDO_INDEX_METADATA sid, DITTTDAT.APIC_CLASS aic 
    where sid.SDO_INDEX_NAME=aic.GEOM_NAMEIND
    and sid.SDO_INDEX_OWNER=aic.OWNER;
begin
  FOR c1_rec IN c1 LOOP
    req:='grant select,delete,insert,update on '||c1_rec.sdo_index_owner||'.'||c1_rec.SDO_INDEX_TABLE||
       ' to DITTT_CARTO';
    execute immediate req;
  END LOOP;
end;
/

-- privilèges sur les vues pour l'indexation spatiale

grant SELECT ON SYS.DBA_VIEWS to DITTT_CARTO;

-- on redonne le rôle DITTT_CARTO aux utilisateurs sauvegardés

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.GrantSavedGrantee_role (''DITTT_CARTO'')';
  exception
    when others then
    null;
end;
/


commit;

