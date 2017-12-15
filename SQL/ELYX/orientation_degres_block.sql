UPDATE DPMDAT.POTOMIX SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.POTOMIX SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.POTOMIX SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.POTOMIX SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BORNELUM SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BORNELUM SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BORNELUM SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BORNELUM SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.JEUXENF SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.JEUXENF SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.JEUXENF SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.JEUXENF SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BOITE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BOITE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BOITE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BOITE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BALISMAR SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BALISMAR SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BALISMAR SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BALISMAR SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.TERRE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.TERRE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.TERRE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.TERRE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.GEOD SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.GEOD SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.GEOD SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.GEOD SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.GPOL SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.GPOL SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.GPOL SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.GPOL SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.ARMIX SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.ARMIX SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.ARMIX SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.ARMIX SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BORNRP SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BORNRP SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BORNRP SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BORNRP SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.E_REGARD SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.E_REGARD SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.E_REGARD SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.E_REGARD SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BORNANTI SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BORNANTI SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BORNANTI SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BORNANTI SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.ELEC_CPT SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.ELEC_CPT SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.ELEC_CPT SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.ELEC_CPT SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.STATUE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.STATUE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.STATUE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.STATUE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.PREVEAU SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.PREVEAU SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.PREVEAU SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.PREVEAU SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.PANNEAU SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.PANNEAU SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.PANNEAU SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.PANNEAU SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.FEUSIGNA SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.FEUSIGNA SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.FEUSIGNA SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.FEUSIGNA SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.O_VENTIL SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.O_VENTIL SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.O_VENTIL SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.O_VENTIL SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.PYLONCOM SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.PYLONCOM SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.PYLONCOM SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.PYLONCOM SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.REGMIX SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.REGMIX SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.REGMIX SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.REGMIX SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.A_VENTOU SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.A_VENTOU SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.A_VENTOU SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.A_VENTOU SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BSLETTRE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BSLETTRE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BSLETTRE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BSLETTRE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.POTEAU SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.POTEAU SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.POTEAU SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.POTEAU SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.GPOREP SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.GPOREP SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.GPOREP SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.GPOREP SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.DIVERS_P SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.DIVERS_P SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.DIVERS_P SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.DIVERS_P SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.O_BORNE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.O_BORNE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.O_BORNE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.O_BORNE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.S SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.S SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.S SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.S SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.EAUARTIF SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.EAUARTIF SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.EAUARTIF SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.EAUARTIF SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.SOURCE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.SOURCE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.SOURCE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.SOURCE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.PIECE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.PIECE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.PIECE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.PIECE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.A_PURGE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.A_PURGE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.A_PURGE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.A_PURGE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.O_CHAMBR SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.O_CHAMBR SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.O_CHAMBR SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.O_CHAMBR SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.O_REGARD SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.O_REGARD SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.O_REGARD SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.O_REGARD SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.ANTENNE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.ANTENNE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.ANTENNE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.ANTENNE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BBATPS SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BBATPS SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BBATPS SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BBATPS SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.GNIREP SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.GNIREP SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.GNIREP SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.GNIREP SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BRANCH SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BRANCH SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BRANCH SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BRANCH SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.INTERRUPTEUR SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.INTERRUPTEUR SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.INTERRUPTEUR SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.INTERRUPTEUR SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.POSTEH61 SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.POSTEH61 SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.POSTEH61 SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.POSTEH61 SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.GEOREP SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.GEOREP SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.GEOREP SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.GEOREP SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.PTLEVE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.PTLEVE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.PTLEVE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.PTLEVE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.E_INCENDIE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.E_INCENDIE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.E_INCENDIE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.E_INCENDIE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.STAMETEO SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.STAMETEO SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.STAMETEO SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.STAMETEO SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.ELEC_SUP SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.ELEC_SUP SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.ELEC_SUP SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.ELEC_SUP SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.PT_COTE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.PT_COTE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.PT_COTE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.PT_COTE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BLOCROC SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BLOCROC SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BLOCROC SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BLOCROC SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.FLECPEIN SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.FLECPEIN SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.FLECPEIN SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.FLECPEIN SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BPSIG SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BPSIG SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BPSIG SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BPSIG SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.POUBELLE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.POUBELLE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.POUBELLE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.POUBELLE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BORNEURG SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BORNEURG SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BORNEURG SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BORNEURG SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.HORODATE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.HORODATE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.HORODATE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.HORODATE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.REGARD SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.REGARD SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.REGARD SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.REGARD SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.O_ARMOI SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.O_ARMOI SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.O_ARMOI SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.O_ARMOI SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.HRUE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.HRUE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.HRUE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.HRUE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.PORTDRAP SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.PORTDRAP SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.PORTDRAP SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.PORTDRAP SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.CANDELAB SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.CANDELAB SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.CANDELAB SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.CANDELAB SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.A_REGARD SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.A_REGARD SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.A_REGARD SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.A_REGARD SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.A_RACCOR SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.A_RACCOR SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.A_RACCOR SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.A_RACCOR SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.E_COMPTEUR SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.E_COMPTEUR SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.E_COMPTEUR SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.E_COMPTEUR SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.HNMRIV SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.HNMRIV SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.HNMRIV SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.HNMRIV SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.O_APPUI SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.O_APPUI SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.O_APPUI SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.O_APPUI SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BALIAERO SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BALIAERO SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BALIAERO SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BALIAERO SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.GNIV SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.GNIV SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.GNIV SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.GNIV SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.O_APBTS SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.O_APBTS SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.O_APBTS SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.O_APBTS SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.ARMOIRE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.ARMOIRE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.ARMOIRE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.ARMOIRE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.HTPNYM SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.HTPNYM SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.HTPNYM SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.HTPNYM SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.SONDE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.SONDE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.SONDE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.SONDE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.ELEC_REG SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.ELEC_REG SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.ELEC_REG SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.ELEC_REG SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.HINFO SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.HINFO SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.HINFO SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.HINFO SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.SIGARMOI SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.SIGARMOI SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.SIGARMOI SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.SIGARMOI SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BALISVOI SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BALISVOI SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BALISVOI SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BALISVOI SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.ARBRE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.ARBRE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.ARBRE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.ARBRE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.CAMSURV SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.CAMSURV SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.CAMSURV SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.CAMSURV SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.EOLIENNE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.EOLIENNE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.EOLIENNE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.EOLIENNE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.BT_COFFR SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.BT_COFFR SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.BT_COFFR SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.BT_COFFR SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.POTOBUS SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.POTOBUS SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.POTOBUS SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.POTOBUS SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.FEUX SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.FEUX SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.FEUX SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.FEUX SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.O_CABINE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.O_CABINE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.O_CABINE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.O_CABINE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.E_BOUCLE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.E_BOUCLE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.E_BOUCLE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.E_BOUCLE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.H_VANNE SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.H_VANNE SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.H_VANNE SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.H_VANNE SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.POTOBATI SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.POTOBATI SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.POTOBATI SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.POTOBATI SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;
UPDATE DPMDAT.PALETUVIER SET GEOMETRY_ORIENT = 0 WHERE ORIENT IS NULL;
UPDATE DPMDAT.PALETUVIER SET GEOMETRY_ORIENT = (100 - TO_NUMBER(ORIENT,'999D999999','NLS_NUMERIC_CHARACTERS=''.,''')) WHERE ORIENT IS NOT NULL;
UPDATE DPMDAT.PALETUVIER SET GEOMETRY_ORIENT = (GEOMETRY_ORIENT + 400) WHERE GEOMETRY_ORIENT < 0;
UPDATE DPMDAT.PALETUVIER SET GEOMETRY_ORIENT = (360 * (GEOMETRY_ORIENT / 400));
COMMIT;