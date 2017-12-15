
-- sauvegarde des utilisateurs associés au role DITTT_APIC_ADMIN

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.SaveGrantee_role (''DITTT_APIC_ADMIN'')';
  exception
    when others then
    null;
end;
/
begin
  execute immediate 'drop role DITTT_APIC_ADMIN';
  exception
    when others then
    null;
end;
/
create role DITTT_APIC_ADMIN not identified;
declare
  luser varchar2(80);
begin
  select user into luser from dual;
  execute immediate 'revoke DITTT_APIC_ADMIN from '||luser;
end;
/

-- privilèges pour le schéma de l'instance APICADM

grant select on APICADM.APIC_BD_CATALOG to DITTT_APIC_ADMIN;

-- privilèges pour le schéma de la base DITTTDAT

grant select,insert,delete,update on DITTTDAT.APIC_CLASS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.APIC_STATE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.APIC_HIERARCH to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.APIC_TRANSACTION to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.APIC_SCHEMA to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.APIC_SCHEMA_RELATION to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SEQ_APIC_TRANSACTION to DITTT_APIC_ADMIN;
grant select on DITTTDAT.APIC_SCHEMA_SEQ to DITTT_APIC_ADMIN;

-- privilèges pour le schéma du modèle PSUDCAT

grant select on PSUDCAT.APIC_BASE to DITTT_APIC_ADMIN;
grant select on PSUDCAT.APIC_CLASS_MCD to DITTT_APIC_ADMIN;
grant select on PSUDCAT.STCA_ROLE to DITTT_APIC_ADMIN;
grant select on PSUDCAT.APIC_USER to DITTT_APIC_ADMIN;
grant select on PSUDCAT.APIC_USER_ROLE to DITTT_APIC_ADMIN;
grant select on PSUDCAT.STCA_PRODUCT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on PSUDCAT.STCA_PUBLICATION to DITTT_APIC_ADMIN;
grant select on PSUDCAT.STCA_PA_TYPE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on PSUDCAT.STCA_PARAM to DITTT_APIC_ADMIN;
grant select,insert,delete,update on PSUDCAT.STCA_PA_NAME to DITTT_APIC_ADMIN;
grant select,insert,delete,update on PSUDCAT.STCA_BINARY_PARAM to DITTT_APIC_ADMIN;
grant select on PSUDCAT.STCA_PAT_PRO to DITTT_APIC_ADMIN;
grant select,insert,delete,update on PSUDCAT.STCA_RO_PA to DITTT_APIC_ADMIN;
grant select,insert,delete,update on PSUDCAT.STCA_ETAT_USER to DITTT_APIC_ADMIN;
grant select on PSUDCAT.STCA_ETAT_ROLE to DITTT_APIC_ADMIN;
grant select on PSUDCAT.PARAM_SEQ_ID to DITTT_APIC_ADMIN;
grant select on PSUDCAT.PUBLI_SEQ_ID to DITTT_APIC_ADMIN;

-- privilèges sur la table INTERRUPTEUR

grant select,insert,delete,update on DITTTDAT.INTERRUPTEUR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.INTERRUPTEUR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.INTERRUPTEUR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BALISVOI

grant select,insert,delete,update on DITTTDAT.BALISVOI to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BALISVOI_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BALISVOI_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BLOCROC

grant select,insert,delete,update on DITTTDAT.BLOCROC to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BLOCROC_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BLOCROC_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ARBRE

grant select,insert,delete,update on DITTTDAT.ARBRE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ARBRE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ARBRE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table RASTER10

grant select,insert,delete,update on DITTTDAT.RASTER10 to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.RASTER10_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.RASTER10_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PARCELLE_T

grant select,insert,delete,update on DITTTDAT.PARCELLE_T to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PARCELLE_T_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PARCELLE_T_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table DRAINACC

grant select,insert,delete,update on DITTTDAT.DRAINACC to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.DRAINACC_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.DRAINACC_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table SURFVEGE

grant select,insert,delete,update on DITTTDAT.SURFVEGE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.SURFVEGE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SURFVEGE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TEXTEINFRA

grant select,insert,delete,update on DITTTDAT.TEXTEINFRA to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TEXTEINFRA_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TEXTEINFRA_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PASSEREL

grant select,insert,delete,update on DITTTDAT.PASSEREL to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PASSEREL_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PASSEREL_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BORNEURG

grant select,insert,delete,update on DITTTDAT.BORNEURG to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BORNEURG_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BORNEURG_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table GPOL

grant select,insert,delete,update on DITTTDAT.GPOL to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.GPOL_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.GPOL_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table O_CHAMBR

grant select,insert,delete,update on DITTTDAT.O_CHAMBR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.O_CHAMBR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.O_CHAMBR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BBATPS

grant select,insert,delete,update on DITTTDAT.BBATPS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BBATPS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BBATPS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_TRONCO

grant select,insert,delete,update on DITTTDAT.E_TRONCO to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_TRONCO_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_TRONCO_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table O_BORNE

grant select,insert,delete,update on DITTTDAT.O_BORNE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.O_BORNE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.O_BORNE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table COMMUNE

grant select,insert,delete,update on DITTTDAT.COMMUNE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.COMMUNE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.COMMUNE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ARMIX

grant select,insert,delete,update on DITTTDAT.ARMIX to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ARMIX_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ARMIX_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PTLEVE

grant select,insert,delete,update on DITTTDAT.PTLEVE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PTLEVE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PTLEVE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table P_URB

grant select,insert,delete,update on DITTTDAT.P_URB to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.P_URB_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.P_URB_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table DOLINE

grant select,insert,delete,update on DITTTDAT.DOLINE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.DOLINE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.DOLINE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table LIMRES

grant select,insert,delete,update on DITTTDAT.LIMRES to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.LIMRES_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.LIMRES_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PISBOEUF

grant select,insert,delete,update on DITTTDAT.PISBOEUF to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PISBOEUF_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PISBOEUF_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BUSE

grant select,insert,delete,update on DITTTDAT.BUSE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BUSE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BUSE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table REGARD

grant select,insert,delete,update on DITTTDAT.REGARD to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.REGARD_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.REGARD_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table DEPOTOIR

grant select,insert,delete,update on DITTTDAT.DEPOTOIR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.DEPOTOIR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.DEPOTOIR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ARMOIRE

grant select,insert,delete,update on DITTTDAT.ARMOIRE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ARMOIRE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ARMOIRE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table HTPNYM

grant select,insert,delete,update on DITTTDAT.HTPNYM to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.HTPNYM_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.HTPNYM_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table SENTIER

grant select,insert,delete,update on DITTTDAT.SENTIER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.SENTIER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SENTIER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CABAE

grant select,insert,delete,update on DITTTDAT.CABAE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CABAE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CABAE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CIMETIER

grant select,insert,delete,update on DITTTDAT.CIMETIER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CIMETIER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CIMETIER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ILOTBP

grant select,insert,delete,update on DITTTDAT.ILOTBP to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ILOTBP_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ILOTBP_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table SOURCE

grant select,insert,delete,update on DITTTDAT.SOURCE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.SOURCE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SOURCE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table STOCKEAU

grant select,insert,delete,update on DITTTDAT.STOCKEAU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.STOCKEAU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.STOCKEAU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ZEBRA

grant select,insert,delete,update on DITTTDAT.ZEBRA to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ZEBRA_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ZEBRA_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ELEC_REG

grant select,insert,delete,update on DITTTDAT.ELEC_REG to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ELEC_REG_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ELEC_REG_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ISOBATHE

grant select,insert,delete,update on DITTTDAT.ISOBATHE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ISOBATHE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ISOBATHE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ZONARBUS

grant select,insert,delete,update on DITTTDAT.ZONARBUS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ZONARBUS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ZONARBUS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table A_AXEFOS

grant select,insert,delete,update on DITTTDAT.A_AXEFOS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.A_AXEFOS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.A_AXEFOS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table DIVERS_S

grant select,insert,delete,update on DITTTDAT.DIVERS_S to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.DIVERS_S_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.DIVERS_S_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table A_GRISUR

grant select,insert,delete,update on DITTTDAT.A_GRISUR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.A_GRISUR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.A_GRISUR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table DIVERS_P

grant select,insert,delete,update on DITTTDAT.DIVERS_P to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.DIVERS_P_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.DIVERS_P_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table VOIACCES

grant select,insert,delete,update on DITTTDAT.VOIACCES to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.VOIACCES_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.VOIACCES_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table COURBE

grant select,insert,delete,update on DITTTDAT.COURBE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.COURBE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.COURBE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_COMPTEUR

grant select,insert,delete,update on DITTTDAT.E_COMPTEUR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_COMPTEUR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_COMPTEUR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table DIVERS_L

grant select,insert,delete,update on DITTTDAT.DIVERS_L to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.DIVERS_L_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.DIVERS_L_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FEUSIGNA

grant select,insert,delete,update on DITTTDAT.FEUSIGNA to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FEUSIGNA_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FEUSIGNA_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table LEVE

grant select,insert,delete,update on DITTTDAT.LEVE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.LEVE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.LEVE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PCOURDO

grant select,insert,delete,update on DITTTDAT.PCOURDO to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PCOURDO_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PCOURDO_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table O_APBTS

grant select,insert,delete,update on DITTTDAT.O_APBTS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.O_APBTS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.O_APBTS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ENROCHEMENT

grant select,insert,delete,update on DITTTDAT.ENROCHEMENT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ENROCHEMENT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ENROCHEMENT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_PURGE

grant select,insert,delete,update on DITTTDAT.E_PURGE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_PURGE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_PURGE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table LINAERO

grant select,insert,delete,update on DITTTDAT.LINAERO to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.LINAERO_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.LINAERO_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PISTAERO

grant select,insert,delete,update on DITTTDAT.PISTAERO to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PISTAERO_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PISTAERO_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PLANDEAU

grant select,insert,delete,update on DITTTDAT.PLANDEAU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PLANDEAU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PLANDEAU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table A_RACCORD

grant select,insert,delete,update on DITTTDAT.A_RACCORD to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.A_RACCORD_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.A_RACCORD_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FOURREAU

grant select,insert,delete,update on DITTTDAT.FOURREAU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FOURREAU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FOURREAU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table GLISSECU

grant select,insert,delete,update on DITTTDAT.GLISSECU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.GLISSECU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.GLISSECU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table META_DITTT

grant select,insert,delete,update on DITTTDAT.META_DITTT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.META_DITTT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.META_DITTT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FREPST

grant select,insert,delete,update on DITTTDAT.FREPST to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FREPST_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FREPST_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FSERV

grant select,insert,delete,update on DITTTDAT.FSERV to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FSERV_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FSERV_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CABLE

grant select,insert,delete,update on DITTTDAT.CABLE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CABLE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CABLE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table COURDEAU

grant select,insert,delete,update on DITTTDAT.COURDEAU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.COURDEAU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.COURDEAU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FPROJ

grant select,insert,delete,update on DITTTDAT.FPROJ to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FPROJ_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FPROJ_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ENTCHAR

grant select,insert,delete,update on DITTTDAT.ENTCHAR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ENTCHAR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ENTCHAR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PORTDRAP

grant select,insert,delete,update on DITTTDAT.PORTDRAP to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PORTDRAP_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PORTDRAP_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table SIGARMOI

grant select,insert,delete,update on DITTTDAT.SIGARMOI to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.SIGARMOI_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SIGARMOI_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table EL_GENPHO

grant select,insert,delete,update on DITTTDAT.EL_GENPHO to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.EL_GENPHO_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.EL_GENPHO_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table AIRESTAT

grant select,insert,delete,update on DITTTDAT.AIRESTAT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.AIRESTAT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.AIRESTAT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PANNEAU

grant select,insert,delete,update on DITTTDAT.PANNEAU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PANNEAU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PANNEAU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BORDBASS

grant select,insert,delete,update on DITTTDAT.BORDBASS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BORDBASS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BORDBASS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FLECPEIN

grant select,insert,delete,update on DITTTDAT.FLECPEIN to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FLECPEIN_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FLECPEIN_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table SONDE

grant select,insert,delete,update on DITTTDAT.SONDE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.SONDE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SONDE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table LIGCRETE

grant select,insert,delete,update on DITTTDAT.LIGCRETE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.LIGCRETE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.LIGCRETE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TRANCHEE

grant select,insert,delete,update on DITTTDAT.TRANCHEE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TRANCHEE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TRANCHEE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TSPORTS

grant select,insert,delete,update on DITTTDAT.TSPORTS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TSPORTS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TSPORTS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table A_PURGE

grant select,insert,delete,update on DITTTDAT.A_PURGE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.A_PURGE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.A_PURGE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table P500

grant select,insert,delete,update on DITTTDAT.P500 to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.P500_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.P500_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table OUVARTLI

grant select,insert,delete,update on DITTTDAT.OUVARTLI to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.OUVARTLI_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.OUVARTLI_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PANOPUB

grant select,insert,delete,update on DITTTDAT.PANOPUB to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PANOPUB_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PANOPUB_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table SOUTENEMENT

grant select,insert,delete,update on DITTTDAT.SOUTENEMENT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.SOUTENEMENT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SOUTENEMENT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table RALENTIS

grant select,insert,delete,update on DITTTDAT.RALENTIS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.RALENTIS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.RALENTIS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table QUARTIER

grant select,insert,delete,update on DITTTDAT.QUARTIER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.QUARTIER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.QUARTIER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PT_COTE

grant select,insert,delete,update on DITTTDAT.PT_COTE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PT_COTE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PT_COTE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table O_CABINE

grant select,insert,delete,update on DITTTDAT.O_CABINE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.O_CABINE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.O_CABINE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BOITE

grant select,insert,delete,update on DITTTDAT.BOITE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BOITE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BOITE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table DEPRESS

grant select,insert,delete,update on DITTTDAT.DEPRESS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.DEPRESS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.DEPRESS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table GPOREP

grant select,insert,delete,update on DITTTDAT.GPOREP to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.GPOREP_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.GPOREP_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FLUV

grant select,insert,delete,update on DITTTDAT.FLUV to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FLUV_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FLUV_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_RACCOR

grant select,insert,delete,update on DITTTDAT.E_RACCOR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_RACCOR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_RACCOR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PIPELINE

grant select,insert,delete,update on DITTTDAT.PIPELINE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PIPELINE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PIPELINE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table MT_TRANS

grant select,insert,delete,update on DITTTDAT.MT_TRANS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.MT_TRANS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.MT_TRANS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table HORODATE

grant select,insert,delete,update on DITTTDAT.HORODATE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.HORODATE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.HORODATE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BORNELUM

grant select,insert,delete,update on DITTTDAT.BORNELUM to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BORNELUM_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BORNELUM_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table EXCAVART

grant select,insert,delete,update on DITTTDAT.EXCAVART to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.EXCAVART_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.EXCAVART_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CAMSURV

grant select,insert,delete,update on DITTTDAT.CAMSURV to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CAMSURV_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CAMSURV_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BALLUV

grant select,insert,delete,update on DITTTDAT.BALLUV to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BALLUV_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BALLUV_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table HERBIER

grant select,insert,delete,update on DITTTDAT.HERBIER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.HERBIER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.HERBIER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TEMPO_S

grant select,insert,delete,update on DITTTDAT.TEMPO_S to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TEMPO_S_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TEMPO_S_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PORTAIL

grant select,insert,delete,update on DITTTDAT.PORTAIL to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PORTAIL_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PORTAIL_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table HELIPORT

grant select,insert,delete,update on DITTTDAT.HELIPORT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.HELIPORT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.HELIPORT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TEMPO_P

grant select,insert,delete,update on DITTTDAT.TEMPO_P to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TEMPO_P_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TEMPO_P_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table HNMRIV

grant select,insert,delete,update on DITTTDAT.HNMRIV to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.HNMRIV_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.HNMRIV_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TEMPO_L

grant select,insert,delete,update on DITTTDAT.TEMPO_L to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TEMPO_L_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TEMPO_L_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CANDELAB

grant select,insert,delete,update on DITTTDAT.CANDELAB to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CANDELAB_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CANDELAB_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PISCINE

grant select,insert,delete,update on DITTTDAT.PISCINE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PISCINE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PISCINE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table SATELLITE

grant select,insert,delete,update on DITTTDAT.SATELLITE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.SATELLITE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SATELLITE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CONDUFOR

grant select,insert,delete,update on DITTTDAT.CONDUFOR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CONDUFOR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CONDUFOR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table EMPRISE

grant select,insert,delete,update on DITTTDAT.EMPRISE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.EMPRISE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.EMPRISE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table STOCKMIN

grant select,insert,delete,update on DITTTDAT.STOCKMIN to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.STOCKMIN_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.STOCKMIN_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_BOUCLE

grant select,insert,delete,update on DITTTDAT.E_BOUCLE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_BOUCLE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_BOUCLE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table O_ARMOI

grant select,insert,delete,update on DITTTDAT.O_ARMOI to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.O_ARMOI_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.O_ARMOI_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FACE

grant select,insert,delete,update on DITTTDAT.FACE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FACE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FACE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table GEOREP

grant select,insert,delete,update on DITTTDAT.GEOREP to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.GEOREP_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.GEOREP_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BORDMER

grant select,insert,delete,update on DITTTDAT.BORDMER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BORDMER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BORDMER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table HINFRA

grant select,insert,delete,update on DITTTDAT.HINFRA to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.HINFRA_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.HINFRA_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FMAR

grant select,insert,delete,update on DITTTDAT.FMAR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FMAR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FMAR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BATIMENT

grant select,insert,delete,update on DITTTDAT.BATIMENT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BATIMENT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BATIMENT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PTCYCL

grant select,insert,delete,update on DITTTDAT.PTCYCL to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PTCYCL_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PTCYCL_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CENTPARC

grant select,insert,delete,update on DITTTDAT.CENTPARC to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CENTPARC_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CENTPARC_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table A_CANIV

grant select,insert,delete,update on DITTTDAT.A_CANIV to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.A_CANIV_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.A_CANIV_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FACADE

grant select,insert,delete,update on DITTTDAT.FACADE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FACADE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FACADE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BALIAERO

grant select,insert,delete,update on DITTTDAT.BALIAERO to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BALIAERO_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BALIAERO_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PLATFORM

grant select,insert,delete,update on DITTTDAT.PLATFORM to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PLATFORM_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PLATFORM_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table MONUMENT

grant select,insert,delete,update on DITTTDAT.MONUMENT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.MONUMENT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.MONUMENT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PIECE

grant select,insert,delete,update on DITTTDAT.PIECE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PIECE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PIECE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table O_VENTIL

grant select,insert,delete,update on DITTTDAT.O_VENTIL to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.O_VENTIL_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.O_VENTIL_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table POUBELLE

grant select,insert,delete,update on DITTTDAT.POUBELLE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.POUBELLE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.POUBELLE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table GNIV

grant select,insert,delete,update on DITTTDAT.GNIV to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.GNIV_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.GNIV_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CONDUITE

grant select,insert,delete,update on DITTTDAT.CONDUITE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CONDUITE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CONDUITE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table SIGNHOR

grant select,insert,delete,update on DITTTDAT.SIGNHOR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.SIGNHOR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SIGNHOR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BARCORAI

grant select,insert,delete,update on DITTTDAT.BARCORAI to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BARCORAI_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BARCORAI_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table STAMETEO

grant select,insert,delete,update on DITTTDAT.STAMETEO to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.STAMETEO_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.STAMETEO_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table SOMPAR

grant select,insert,delete,update on DITTTDAT.SOMPAR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.SOMPAR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.SOMPAR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ABRIBUS

grant select,insert,delete,update on DITTTDAT.ABRIBUS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ABRIBUS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ABRIBUS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table LIMOP

grant select,insert,delete,update on DITTTDAT.LIMOP to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.LIMOP_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.LIMOP_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ALPIETAM

grant select,insert,delete,update on DITTTDAT.ALPIETAM to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ALPIETAM_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ALPIETAM_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ARCEAU

grant select,insert,delete,update on DITTTDAT.ARCEAU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ARCEAU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ARCEAU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CLICHE

grant select,insert,delete,update on DITTTDAT.CLICHE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CLICHE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CLICHE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FVOIE

grant select,insert,delete,update on DITTTDAT.FVOIE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FVOIE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FVOIE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BORNANTI

grant select,insert,delete,update on DITTTDAT.BORNANTI to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BORNANTI_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BORNANTI_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table O_ENROBE

grant select,insert,delete,update on DITTTDAT.O_ENROBE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.O_ENROBE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.O_ENROBE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CASCADE

grant select,insert,delete,update on DITTTDAT.CASCADE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CASCADE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CASCADE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table P50000

grant select,insert,delete,update on DITTTDAT.P50000 to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.P50000_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.P50000_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table JEUXENF

grant select,insert,delete,update on DITTTDAT.JEUXENF to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.JEUXENF_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.JEUXENF_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TALUS

grant select,insert,delete,update on DITTTDAT.TALUS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TALUS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TALUS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table COTINOND

grant select,insert,delete,update on DITTTDAT.COTINOND to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.COTINOND_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.COTINOND_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ORTHO_SERAIL

grant select,insert,delete,update on DITTTDAT.ORTHO_SERAIL to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ORTHO_SERAIL_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ORTHO_SERAIL_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BLOCSAN

grant select,insert,delete,update on DITTTDAT.BLOCSAN to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BLOCSAN_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BLOCSAN_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table P12500

grant select,insert,delete,update on DITTTDAT.P12500 to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.P12500_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.P12500_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table H_VANNE

grant select,insert,delete,update on DITTTDAT.H_VANNE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.H_VANNE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.H_VANNE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table A_BASVER

grant select,insert,delete,update on DITTTDAT.A_BASVER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.A_BASVER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.A_BASVER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table DIVERS_MNT

grant select,insert,delete,update on DITTTDAT.DIVERS_MNT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.DIVERS_MNT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.DIVERS_MNT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table POTOMIX

grant select,insert,delete,update on DITTTDAT.POTOMIX to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.POTOMIX_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.POTOMIX_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table GNIREP

grant select,insert,delete,update on DITTTDAT.GNIREP to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.GNIREP_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.GNIREP_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table RUINE

grant select,insert,delete,update on DITTTDAT.RUINE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.RUINE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.RUINE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table EPAVE

grant select,insert,delete,update on DITTTDAT.EPAVE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.EPAVE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.EPAVE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_VANNE

grant select,insert,delete,update on DITTTDAT.E_VANNE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_VANNE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_VANNE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PINACORA

grant select,insert,delete,update on DITTTDAT.PINACORA to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PINACORA_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PINACORA_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PLATIER

grant select,insert,delete,update on DITTTDAT.PLATIER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PLATIER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PLATIER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table OUVRDART

grant select,insert,delete,update on DITTTDAT.OUVRDART to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.OUVRDART_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.OUVRDART_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PARCJEUX

grant select,insert,delete,update on DITTTDAT.PARCJEUX to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PARCJEUX_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PARCJEUX_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CAPTEUR

grant select,insert,delete,update on DITTTDAT.CAPTEUR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CAPTEUR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CAPTEUR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table GEOD

grant select,insert,delete,update on DITTTDAT.GEOD to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.GEOD_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.GEOD_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table UNITEPROD

grant select,insert,delete,update on DITTTDAT.UNITEPROD to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.UNITEPROD_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.UNITEPROD_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table A_AXECOU

grant select,insert,delete,update on DITTTDAT.A_AXECOU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.A_AXECOU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.A_AXECOU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table REGMIX

grant select,insert,delete,update on DITTTDAT.REGMIX to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.REGMIX_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.REGMIX_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TERRE

grant select,insert,delete,update on DITTTDAT.TERRE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TERRE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TERRE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BRANCH

grant select,insert,delete,update on DITTTDAT.BRANCH to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BRANCH_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BRANCH_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table A_REGARD

grant select,insert,delete,update on DITTTDAT.A_REGARD to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.A_REGARD_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.A_REGARD_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table MUR

grant select,insert,delete,update on DITTTDAT.MUR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.MUR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.MUR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_INCENDIE

grant select,insert,delete,update on DITTTDAT.E_INCENDIE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_INCENDIE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_INCENDIE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BALISMAR

grant select,insert,delete,update on DITTTDAT.BALISMAR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BALISMAR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BALISMAR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TOMBE

grant select,insert,delete,update on DITTTDAT.TOMBE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TOMBE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TOMBE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BANC

grant select,insert,delete,update on DITTTDAT.BANC to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BANC_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BANC_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table P10000

grant select,insert,delete,update on DITTTDAT.P10000 to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.P10000_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.P10000_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ANTENNE

grant select,insert,delete,update on DITTTDAT.ANTENNE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ANTENNE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ANTENNE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table EAUARTIF

grant select,insert,delete,update on DITTTDAT.EAUARTIF to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.EAUARTIF_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.EAUARTIF_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table EOLIENNE

grant select,insert,delete,update on DITTTDAT.EOLIENNE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.EOLIENNE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.EOLIENNE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table RESERHYD

grant select,insert,delete,update on DITTTDAT.RESERHYD to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.RESERHYD_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.RESERHYD_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PALETUVIER

grant select,insert,delete,update on DITTTDAT.PALETUVIER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PALETUVIER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PALETUVIER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FILOT

grant select,insert,delete,update on DITTTDAT.FILOT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FILOT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FILOT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table A_VENTOU

grant select,insert,delete,update on DITTTDAT.A_VENTOU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.A_VENTOU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.A_VENTOU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BSLETTRE

grant select,insert,delete,update on DITTTDAT.BSLETTRE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BSLETTRE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BSLETTRE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table S

grant select,insert,delete,update on DITTTDAT.S to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.S_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.S_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table EBOULIS

grant select,insert,delete,update on DITTTDAT.EBOULIS to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.EBOULIS_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.EBOULIS_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table GUE

grant select,insert,delete,update on DITTTDAT.GUE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.GUE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.GUE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table HRUE

grant select,insert,delete,update on DITTTDAT.HRUE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.HRUE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.HRUE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CHENAL

grant select,insert,delete,update on DITTTDAT.CHENAL to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CHENAL_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CHENAL_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ORTHO_DITTT

grant select,insert,delete,update on DITTTDAT.ORTHO_DITTT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ORTHO_DITTT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ORTHO_DITTT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FALAISE

grant select,insert,delete,update on DITTTDAT.FALAISE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FALAISE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FALAISE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table POSTEH61

grant select,insert,delete,update on DITTTDAT.POSTEH61 to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.POSTEH61_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.POSTEH61_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PARCELLE

grant select,insert,delete,update on DITTTDAT.PARCELLE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PARCELLE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PARCELLE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ORTHO_PSUD

grant select,insert,delete,update on DITTTDAT.ORTHO_PSUD to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ORTHO_PSUD_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ORTHO_PSUD_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table P2000

grant select,insert,delete,update on DITTTDAT.P2000 to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.P2000_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.P2000_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_LAMPE

grant select,insert,delete,update on DITTTDAT.E_LAMPE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_LAMPE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_LAMPE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table EL_CHAMB

grant select,insert,delete,update on DITTTDAT.EL_CHAMB to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.EL_CHAMB_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.EL_CHAMB_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TEXTPEIN

grant select,insert,delete,update on DITTTDAT.TEXTPEIN to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TEXTPEIN_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TEXTPEIN_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PARCPROV

grant select,insert,delete,update on DITTTDAT.PARCPROV to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PARCPROV_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PARCPROV_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table RAX500

grant select,insert,delete,update on DITTTDAT.RAX500 to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.RAX500_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.RAX500_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FRESER

grant select,insert,delete,update on DITTTDAT.FRESER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FRESER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FRESER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BORDTROT

grant select,insert,delete,update on DITTTDAT.BORDTROT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BORDTROT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BORDTROT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PLANTALI

grant select,insert,delete,update on DITTTDAT.PLANTALI to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PLANTALI_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PLANTALI_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PROVINCE

grant select,insert,delete,update on DITTTDAT.PROVINCE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PROVINCE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PROVINCE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table LIGTALWEG

grant select,insert,delete,update on DITTTDAT.LIGTALWEG to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.LIGTALWEG_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.LIGTALWEG_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ELEC_CPT

grant select,insert,delete,update on DITTTDAT.ELEC_CPT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ELEC_CPT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ELEC_CPT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BT_COFR

grant select,insert,delete,update on DITTTDAT.BT_COFR to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BT_COFR_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BT_COFR_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PLAGE

grant select,insert,delete,update on DITTTDAT.PLAGE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PLAGE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PLAGE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ROCHER

grant select,insert,delete,update on DITTTDAT.ROCHER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ROCHER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ROCHER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table TRANSMIN

grant select,insert,delete,update on DITTTDAT.TRANSMIN to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.TRANSMIN_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.TRANSMIN_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table POTOBATI

grant select,insert,delete,update on DITTTDAT.POTOBATI to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.POTOBATI_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.POTOBATI_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table POTEAU

grant select,insert,delete,update on DITTTDAT.POTEAU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.POTEAU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.POTEAU_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FICHEINFRA

grant select,insert,delete,update on DITTTDAT.FICHEINFRA to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FICHEINFRA_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FICHEINFRA_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FLOCA

grant select,insert,delete,update on DITTTDAT.FLOCA to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FLOCA_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FLOCA_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_REGARD

grant select,insert,delete,update on DITTTDAT.E_REGARD to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_REGARD_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_REGARD_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table FEUX

grant select,insert,delete,update on DITTTDAT.FEUX to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.FEUX_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.FEUX_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table HINFO

grant select,insert,delete,update on DITTTDAT.HINFO to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.HINFO_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.HINFO_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table STATUE

grant select,insert,delete,update on DITTTDAT.STATUE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.STATUE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.STATUE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table CLOTURE

grant select,insert,delete,update on DITTTDAT.CLOTURE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.CLOTURE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.CLOTURE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table O_REGARD

grant select,insert,delete,update on DITTTDAT.O_REGARD to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.O_REGARD_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.O_REGARD_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table LIMSPORT

grant select,insert,delete,update on DITTTDAT.LIMSPORT to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.LIMSPORT_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.LIMSPORT_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table O_MURET

grant select,insert,delete,update on DITTTDAT.O_MURET to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.O_MURET_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.O_MURET_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table OUVRTETE

grant select,insert,delete,update on DITTTDAT.OUVRTETE to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.OUVRTETE_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.OUVRTETE_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PREMVEG

grant select,insert,delete,update on DITTTDAT.PREMVEG to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PREMVEG_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PREMVEG_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table MURSURF

grant select,insert,delete,update on DITTTDAT.MURSURF to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.MURSURF_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.MURSURF_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table ZONEBLOK

grant select,insert,delete,update on DITTTDAT.ZONEBLOK to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.ZONEBLOK_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.ZONEBLOK_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table BORNRP

grant select,insert,delete,update on DITTTDAT.BORNRP to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.BORNRP_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.BORNRP_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table MER

grant select,insert,delete,update on DITTTDAT.MER to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.MER_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.MER_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table PASSPIET

grant select,insert,delete,update on DITTTDAT.PASSPIET to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.PASSPIET_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.PASSPIET_SEQ to DITTT_APIC_ADMIN;

-- privilèges sur la table E_VENTOU

grant select,insert,delete,update on DITTTDAT.E_VENTOU to DITTT_APIC_ADMIN;
grant select,insert,delete,update on DITTTDAT.E_VENTOU_AR to DITTT_APIC_ADMIN;
grant select on DITTTDAT.E_VENTOU_SEQ to DITTT_APIC_ADMIN;

-- on redonne le rôle DITTT_APIC_ADMIN aux utilisateurs sauvegardés

begin
  execute immediate 'call APICADM.OUTILS_APIC_ADMIN.GrantSavedGrantee_role (''DITTT_APIC_ADMIN'')';
  exception
    when others then
    null;
end;
/


commit;

