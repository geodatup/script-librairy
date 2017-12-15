--
-- flower_create.sql : creation du modèle flower
--
-- version 20/10/2008
--
--

-- 1 : Objet globaux
-- ================================

connect sys/pwd@cnx as sysdba;;

DROP USER FLOWER CASCADE;
DROP USER FLOWER_ROBOT CASCADE;
DROP ROLE FW_ADMIN;
DROP ROLE FW_USER;
DROP ROLE FW_USER_SIG_ROLE;

--role FW_ADMIN: Donne le profil administrateur à un utilisateur
CREATE ROLE FW_ADMIN;
CREATE USER FLOWER IDENTIFIED BY FLOWER DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP;
GRANT UNLIMITED TABLESPACE TO FLOWER;

--role FW_USER: Donne le profil de simple utilisateur
CREATE ROLE FW_USER;

CREATE USER FLOWER_ROBOT IDENTIFIED BY FLOWER DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP;
GRANT CONNECT,SELECT ANY DICTIONARY,SELECT ANY TABLE,ALTER ANY TABLE,DROP ANY TABLE,CREATE ANY SEQUENCE,DROP ANY SEQUENCE,CREATE ROLE,GRANT ANY OBJECT PRIVILEGE,WM_ADMIN_ROLE,FW_ADMIN TO FLOWER_ROBOT;
GRANT EXECUTE ON APICADM.OUTILS_APIC_ADMIN TO FLOWER_ROBOT;

-- Creation de la vue APICADM.APIC_TAB_PRIVS
GRANT SELECT ANY DICTIONARY TO APICADM;
create or replace view APICADM.APIC_TAB_PRIVS (GRANTOR,GRANTEE,OWNER,TABLE_NAME,PRIVILEGE) AS
 select ur.name, ue.name, u.name, o.name, tpm.name
 from sys.objauth$ oa, sys.obj$ o, sys.user$ u, sys.user$ ur, sys.user$ ue, table_privilege_map tpm
 where oa.obj# = o.obj# and oa.grantor# = ur.user# and oa.grantee# = ue.user#
 and oa.col# is null and u.user# = o.owner# and oa.privilege# = tpm.privilege;
GRANT SELECT ON APICADM.APIC_TAB_PRIVS TO FW_ADMIN;
GRANT SELECT ON APICADM.APIC_TAB_PRIVS TO FW_USER;

-- role FW_USER_SIG_ROLE : Donne des droits sur les tables necessaires à l'utilisation des projets.
CREATE ROLE FW_USER_SIG_ROLE;

-- 2 : schema flower
-- =================

-- creation des sequences
CREATE SEQUENCE FLOWER.FW_FORMAT_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_FORMAT_SEQ TO FW_ADMIN;
GRANT SELECT ON  FLOWER.FW_FORMAT_SEQ TO FW_USER;

CREATE SEQUENCE FLOWER.FW_EXPORT_MODEL_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_EXPORT_MODEL_SEQ TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_EXPORT_MODEL_SEQ TO FW_USER;

CREATE SEQUENCE FLOWER.FW_EXPORT_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_EXPORT_SEQ TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_EXPORT_SEQ TO FW_USER;

CREATE SEQUENCE FLOWER.FW_PROJECT_MODEL_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_PROJECT_MODEL_SEQ TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_PROJECT_MODEL_SEQ TO FW_USER;

CREATE SEQUENCE FLOWER.FW_PROJECT_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_PROJECT_SEQ TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_PROJECT_SEQ TO FW_USER;

CREATE SEQUENCE FLOWER.FW_IMPORT_MODEL_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT_MODEL_SEQ TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT_MODEL_SEQ TO FW_USER;

CREATE SEQUENCE FLOWER.FW_IMPORT_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT_SEQ TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT_SEQ TO FW_USER;

CREATE SEQUENCE FLOWER.FW_IMPORT_LOT_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT_LOT_SEQ TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT_LOT_SEQ TO FW_USER;

CREATE SEQUENCE FLOWER.FW_SCHEDULE_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_SCHEDULE_SEQ TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_SCHEDULE_SEQ TO FW_USER;

CREATE SEQUENCE FLOWER.FW_CONTROL_SEQ NOCACHE;
GRANT ALL PRIVILEGES ON FLOWER.FW_CONTROL_SEQ TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_CONTROL_SEQ TO FW_USER;

-- ============
-- les formats
-- ============

CREATE TABLE FLOWER.FW_FORMAT
(
  FORMAT_ID      INTEGER NOT NULL PRIMARY KEY,
  NAME           VARCHAR2(80) NOT NULL,
  DIRECTION      INTEGER DEFAULT 0 NOT NULL,
  TRANSLATOR     INTEGER DEFAULT 0 NOT NULL,      -- None=0, Edigeo=1, Sai=2, Dxf=3, Fme=4,
  EXTENSION_IMP  VARCHAR2(32),
  EXTENSION_EXP  VARCHAR2(32),
  FME_NAME       VARCHAR2(80),                    -- nom du FME du format
  PAR_EXT_IMP    VARCHAR2(512),                   -- format des extensions du fichier de paramètres des imports
  PAR_EXT_EXP    VARCHAR2(512),                   -- format des extensions du fichier de paramètres des exports
  FLAGS          INTEGER DEFAULT 0 NOT NULL       -- des flags , champs de bits 1 : fichier de param d'import obligatoire,
                                                  --                            2 : fichier de param d'export obligatoire
);
GRANT ALL PRIVILEGES ON FLOWER.FW_FORMAT TO FW_ADMIN;
GRANT SELECT ON FLOWER.FW_FORMAT TO FW_USER;

-- ================
-- modele de projet
-- ================
 CREATE TABLE FLOWER.FW_PROJECT_MODEL
(
  MODEL_ID       INTEGER NOT NULL PRIMARY KEY,   -- identifiant du modèle, provient de la séquence FW_PROJECT_MODEL_SEQ
  NAME           VARCHAR2(255) NOT NULL,         -- nom du modèle
  CREATE_USER    VARCHAR2(32) NOT NULL,          -- nom oracle du createur de ce modèle
  CREATE_DATE    TIMESTAMP NOT NULL,             -- date de la creation de ce modèle
  UPDATE_USER    VARCHAR2(32),                   -- utilisateur Oracle de la dernière modification
  UPDATE_DATE    TIMESTAMP,                      -- date de dernière modification
  -- EMAIL       VARCHAR2(80 byte),
  GIS_DBASE      VARCHAR2(80) NOT NULL,          -- identifiant de base de données apic : Référence au champ ‘DATABASE’ de la table APICADM.APIC_SPACE
  USER_ROLE      VARCHAR2(400),                  -- liste des roles separées par ';'
  AREA_CLASS     VARCHAR2(30),                   -- nom de la classe (composant) définissant la zone d'étude
  AREA_ATTRI     VARCHAR2(30),                   -- nom de l'attibut permettant d'obtenir la zone
  COMMENTS       CLOB                            -- Commentaires
);
GRANT ALL PRIVILEGES ON FLOWER.FW_PROJECT_MODEL TO FW_ADMIN;
GRANT SELECT ON FLOWER.FW_PROJECT_MODEL TO FW_USER;
GRANT SELECT ON FLOWER.FW_PROJECT_MODEL TO FW_USER_SIG_ROLE;

-- ==========
-- project
-- ==========
CREATE TABLE FLOWER.FW_PROJECT
(
  PROJECT_ID     INTEGER NOT NULL PRIMARY KEY,   -- identifiant du modèle, provient de la séquence
  NAME           VARCHAR2(255) NOT NULL,         -- nom du projet
  MODEL_ID       INTEGER NOT NULL,               -- identifiant du modèle
  CREATE_USER    VARCHAR2(32) NOT NULL,          -- nom Oracle du créateur du projet
  CREATE_DATE    TIMESTAMP,                      -- date de creation du projet
  UPDATE_USER    VARCHAR2(32),                   -- utilisateur Oracle de la dernière modification
  UPDATE_DATE    TIMESTAMP,                      -- date de dernière modification
  OPEN_BEGIN     TIMESTAMP,                      -- date de début d'ouverture par flower (creation du workspace)
  OPEN_END       TIMESTAMP,                      -- date de fin d'ouverture par flower
  CLOSE_USER     VARCHAR2(32),                   -- utilisateur Oracle de fermeture du Projet
  CLOSE_DATE     TIMESTAMP,                      -- date de fin du projet par apic
  COMMIT_BEGIN   TIMESTAMP,                      -- date de debut de validation par flower
  COMMIT_END     TIMESTAMP,                      -- date de fin de validation par flower
  ROLLBACK_BEGIN TIMESTAMP,                      -- date de debut d'annulation par flower
  ROLLBACK_END   TIMESTAMP,                      -- date de fin d'annulation par flower
  -- EMAIL       VARCHAR2(80),
  AREA_VALUE     VARCHAR2(400),                  -- valeur de l'attribut de AREA_ATTRI de la class AREA_CLASS
  CODE_SEL       INTEGER DEFAULT 1 NOT NULL,     -- code de selection :         0=aucun, 1=totalement inclus, 2=partiellement inclus, 3=tous
  SCHEDULED      INTEGER DEFAULT 0 NOT NULL,     -- code temporel de lancement : 0 immediat, 1 : differé prioritaire, 2 : différé
  STATUS         INTEGER DEFAULT 0 NOT NULL,     -- etat du projet
  WORKSPACE      VARCHAR2(80),                   -- nom du WORKSPACE créé par flower pour ce projet
  REPORT         CLOB,                           -- rapport xml de la creation de la validation ou de l annulation
  PROGRESS       NUMBER DEFAULT 0 NOT NULL,      -- etat d'avancement de la tache courante
  COMMENTS       CLOB,                           -- Commentaires
  FOREIGN KEY(MODEL_ID) REFERENCES FLOWER.FW_PROJECT_MODEL(MODEL_ID)
);
GRANT ALL PRIVILEGES ON FLOWER.FW_PROJECT TO FW_ADMIN;
GRANT SELECT ON FLOWER.FW_PROJECT TO FW_USER;
GRANT SELECT, UPDATE ON FLOWER.FW_PROJECT TO FW_USER_SIG_ROLE;

-- ===============
-- modele export
-- ===============
CREATE TABLE FLOWER.FW_EXPORT_MODEL
(
  MODEL_ID       INTEGER NOT NULL PRIMARY KEY,   -- identifiant du modèle, provient de la sequence FW_EXPORT_MODEL_SEQ
  NAME           VARCHAR2(255) NOT NULL,         -- nom du modèle
  CREATE_USER    VARCHAR2(32) NOT NULL,          -- nom oracle du createur
  CREATE_DATE    TIMESTAMP NOT NULL,             -- date de la creation
  UPDATE_USER    VARCHAR2(32),                   -- utilisateur Oracle de la dernière modification
  UPDATE_DATE    TIMESTAMP,                      -- date de dernière modification
  FORMAT_ID      INTEGER DEFAULT 0 NOT NULL,     -- Identifiant du format, reference à la table FW_FORMAT.ID
  PARAM_PATH     VARCHAR2(260),                  -- chemin du fichier de paramètres du convertisseur relatif a la variable DataPath
  GIS_DBASE      VARCHAR2(80) NOT NULL,          -- nom de la base de données APIC
  CLASS_LIST     CLOB,                           -- liste des classes du modèles separées par ';'
  USE_AREA       NUMBER(1) DEFAULT 0 NOT NULL,   -- utilisation d'une zone : 0=non, 1=oui
  AREA_CLASS     VARCHAR2(30),                   -- nom de la classe définissant la zone
  AREA_ATTRI     VARCHAR2(30),                   -- nom de l'attribut de cette classe
  FLAGS          INTEGER DEFAULT 0 NOT NULL,     -- 0 normal 1 reguler ???
  USER_ROLE      VARCHAR2(400),                  -- liste des roles APIC d'utilisateurs du modèle (; séparés) TODO
  CODE_SEL       NUMBER(1) DEFAULT 0 NOT NULL,   -- valeur par defaut de CODE_SEL : Aucun=0,		Inclus=1,		InclusIntersec=2,		NonDisjoint=3
  SCHEDULED      NUMBER(1) DEFAULT 0 NOT NULL,   -- valeur par defaut de SCHEDULED
  LOCKS          INTEGER DEFAULT 0 NOT NULL,     -- champ de bit des verrous (Scheduled = 1, UseArea = 2, CodeSel = 4)
  USE_WORKSPACE  NUMBER(1) DEFAULT 0 NOT NULL,   -- utilisation de workspace manager : 0 non , 2 projet
  COMMENTS       CLOB,                           -- Commentaires
  FOREIGN KEY(FORMAT_ID) REFERENCES FLOWER.FW_FORMAT(FORMAT_ID)
);
GRANT ALL PRIVILEGES ON FLOWER.FW_EXPORT_MODEL TO FW_ADMIN;
GRANT SELECT ON FLOWER.FW_EXPORT_MODEL TO FW_USER;

-- ==========
-- export
-- ==========
CREATE TABLE FLOWER.FW_EXPORT
(
  EXPORT_ID      INTEGER NOT NULL PRIMARY KEY,   -- identifiant de l'import, provient de la sequence FW_EXPORT_SEQ
  NAME           VARCHAR2(255) NOT NULL,         -- nom de l'export
  MODEL_ID       INTEGER NOT NULL,               -- identifiant du modèle FW_EXPORT_MODEL.MODEL_ID
  CREATE_USER    VARCHAR2(32) NOT NULL,          -- nom oracle du createur
  CREATE_DATE    TIMESTAMP NOT NULL,             -- date de la creation
  UPDATE_USER    VARCHAR2(32),                   -- utilisateur Oracle de la dernière modification
  UPDATE_DATE    TIMESTAMP,                      -- date de dernière modification
  START_DATE     TIMESTAMP,                      -- date de début de l'export
  END_DATE       TIMESTAMP,                      -- date de fin de l'export
  CLASS_LIST     CLOB,                           -- liste des classes de l'export ( ; separées)
  USER_ROLE      VARCHAR2(32),                   -- rôle APIC à utiliser pour exécuter l'export (NULL si on prend le rôle du modèle)
  USE_AREA       NUMBER(1) DEFAULT 0 NOT NULL,   -- utilisation d'unr zone : 0=non, 1=oui
  AREA_VALUE     VARCHAR2(400),                  -- valeur de l'attribut de la classe de la zone
  CODE_SEL       INTEGER DEFAULT 1 NOT NULL,     -- code de selection :         0=aucun, 1=totalement inclus, 2=partiellement inclus, 3=tous
  STATUS         INTEGER DEFAULT 0 NOT NULL,     -- etat de cet export
  PROGRESS       NUMBER  DEFAULT 0 NOT NULL,     -- etat d'avancement de cet export
  ECODE          INTEGER DEFAULT 0 NOT NULL,     -- code d'erreur de l'etat
  SCHEDULED      NUMBER(1) DEFAULT 0 NOT NULL,   -- code temporel de lancement : 0 immediat, 1 : differé prioritaire, 2 : différé
  REPORT         CLOB,                           -- rapport de l'export
  FILE_PATH      VARCHAR2(260),                  -- fichier de sortie de l'export, relatif a DataPath/Export/Download
  PROJECT_ID     INTEGER,                        -- identifiant du projet (cas des exports de projet)
  SCH_IDENT      INTEGER,                        -- identifiant du schedule
  ISPUBLIC	 INTEGER DEFAULT 0 NOT NULL,     -- 0 : l'export est privé, 1 : l'export est public
  COMMENTS       CLOB,                           -- Commentaires
  LDAPENTRY      CLOB,                           -- Liste des groupes de notifications pour cette tâche
  FOREIGN KEY(MODEL_ID)   REFERENCES FLOWER.FW_EXPORT_MODEL(MODEL_ID),
  FOREIGN KEY(PROJECT_ID) REFERENCES FLOWER.FW_PROJECT(PROJECT_ID)
);
GRANT ALL PRIVILEGES ON FLOWER.FW_EXPORT TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_EXPORT TO FW_USER;

-- ===============
-- modèle d'import
-- ===============
CREATE TABLE FLOWER.FW_IMPORT_MODEL
(
  MODEL_ID       INTEGER NOT NULL PRIMARY KEY,   -- identifiant du modèle, provient de la sequence FW_IMPORT_MODEL_SEQ
  NAME           VARCHAR2(255) NOT NULL,         -- nom du modèle
  CREATE_USER    VARCHAR2(32) NOT NULL,          -- nom oracle du createur
  CREATE_DATE    TIMESTAMP NOT NULL,             -- date de la creation
  UPDATE_USER    VARCHAR2(32),                   -- utilisateur Oracle de la dernière modification
  UPDATE_DATE    TIMESTAMP,                      -- date de dernière modification
  FORMAT_ID      INTEGER DEFAULT 0 NOT NULL,     -- Identifiant du format, reference à la table FW_FORMAT.ID
  PARAM_PATH     VARCHAR2(260),                  -- chemin du fichier de paramètres du convertisseur
  GIS_DBASE      VARCHAR2(80) NOT NULL,          -- nom de la base de données APIC
  CLASS_LIST     CLOB,                           -- liste des classes du modèles
  IMODE          NUMBER(1) DEFAULT 0 NOT NULL,   -- import mode : 0=add, 1=remplace
  USE_AREA       NUMBER(1) DEFAULT 0 NOT NULL,   -- utilisation d'une zone
  AREA_CLASS     VARCHAR2(30),                   -- nom de la classe définissant la zone
  AREA_ATTRI     VARCHAR2(30),                   -- nom de l attribut de cette classe
  USER_ROLE      VARCHAR2(400),                  -- liste des roles APIC d'utilisateurs du modèle (; séparés)
  CODE_DEL       NUMBER(1) DEFAULT 0 NOT NULL,   -- valeur par default de CODE_DEL
  CODE_INS       NUMBER(1) DEFAULT 0 NOT NULL,   -- valeur par default de CODE_INS
  USE_WORKSPACE  NUMBER(1) DEFAULT 0 NOT NULL,   -- valeur par default de USE_WORKSPACE
  SCHEDULED      NUMBER(1) DEFAULT 0 NOT NULL,   -- valeur par defaut de SCHEDULED
  LOCKS          INTEGER DEFAULT 0 NOT NULL,     -- champs de bit des verrous (Scheduled = 1,Imode=2, UseWorkspace = 4, UseArea=8, CodeDel = 16, CodeIns = 32)
  COMMENTS       CLOB,                           -- Commentaires
  CTRL_ATTR		 	 NUMBER(1) DEFAULT 1 NOT NULL,   --Contrôle des attrubuts
  CTRL_ATTR_LENGTH  NUMBER(1) DEFAULT 2 NOT NULL,   --Contrôle de la longueur de la valeur d'attribut
  CTRL_ATTR_INTERVAL	NUMBER(1) DEFAULT 2 NOT NULL,   --Contrôle de la valeur d'attribut par rapport à un intrvalle de saisie
  CTRL_ATTR_ENUM			NUMBER(1) DEFAULT 1 NOT NULL,   --Contrôle de la valeur d'attribut par rapport à une énumération de valeurs
  CTRL_CREATION_DATE  NUMBER(1) DEFAULT 1 NOT NULL,   --Contrôle de la date de création
  CTRL_GEOM 		 INTEGER DEFAULT 118 NOT NULL,
  CTRL_LOCKS		 INTEGER DEFAULT 0 NOT NULL,	--champs de bit des verrous de contrôles
  FOREIGN KEY(FORMAT_ID) REFERENCES FLOWER.FW_FORMAT(FORMAT_ID)
);
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT_MODEL TO FW_ADMIN;
GRANT SELECT ON FLOWER.FW_IMPORT_MODEL TO FW_USER;
GRANT SELECT ON FLOWER.FW_IMPORT_MODEL TO FW_USER_SIG_ROLE;

-- ==========
-- import
-- ==========
CREATE TABLE FLOWER.FW_IMPORT
(
  IMPORT_ID      INTEGER NOT NULL PRIMARY KEY,   -- identifiant de l import, provient de la sequence FW_IMPORT_SEQ
  NAME           VARCHAR2(255) NOT NULL,         -- nom de l'import
  MODEL_ID       INTEGER NOT NULL,               -- identifiant du modèle FW_IMPORT_MODEL.MODEL_ID
  CREATE_USER    VARCHAR2(32) NOT NULL,          -- nom oracle du createur
  CREATE_DATE    TIMESTAMP NOT NULL,             -- date de la creation
  UPDATE_USER    VARCHAR2(32),                   -- utilisateur Oracle de la dernière modification
  UPDATE_DATE    TIMESTAMP,                      -- date de dernière modification
  START_DATE     TIMESTAMP,                      -- date de début de l'import
  END_DATE       TIMESTAMP,                      -- date de fin de l'import
  USER_ROLE      VARCHAR2(32),                   -- rôle APIC à utiliser pour exécuter l'import (NULL si on prend le rôle du modèle)
  STATUS         INTEGER DEFAULT 0 NOT NULL,     -- etat de cet import
  ECODE          INTEGER DEFAULT 0 NOT NULL,     -- code d'erreur de l'etat
  NB_ERROR       INTEGER DEFAULT 0 NOT NULL,     -- nombre d'erreur dans les objets importés
  SCHEDULED      NUMBER(1) DEFAULT 0 NOT NULL,   -- code temporel de lancement : 0 immediat, 1 : differé prioritaire, 2 : différé
  IMODE          NUMBER(1) DEFAULT 0 NOT NULL,   -- import mode : 0=add, 1=replace
  USE_AREA       NUMBER(1) DEFAULT 0 NOT NULL,   -- utilisation d'une zone : 0 non , 1 : oui (possible que si le model est renseigné)
  CODE_DEL       NUMBER(1) DEFAULT 0 NOT NULL,   -- code de suppression : 0 pas de supression , 1 : supression totalement inclus, 2 : supression partiellement include, 3: supression de tout les objets
  CODE_INS       NUMBER(1) DEFAULT 0 NOT NULL,   -- code d ajout et de verification : 0 pas de verif, 1 verif total include, 2 : verif partiellement inclus
  USE_WORKSPACE  NUMBER(1) DEFAULT 1 NOT NULL,   -- utilisation de workspace manager : 0 non , 1 oui, 2 projet
  WORKSPACE      VARCHAR2(80),                   -- nom du workspace qui est crée
  PROJECT_ID     INTEGER,                        -- identifiant du projet
  SCH_IDENT      INTEGER,                        -- identifiant du schedule
  TRY_DATE       TIMESTAMP,                      -- date de la prochaine tentatvie
  TRY_COUNT      INTEGER DEFAULT 1 NOT NULL,     -- nombre de tentative restante
  REPORT         CLOB,                           -- rapport au format xml
  PROGRESS       NUMBER  DEFAULT 0 NOT NULL,     -- etat d'avancement de l'import (TODO)
  ADVANCE        CLOB,							             -- avancement sous forme d'xml
  ISPUBLIC       INTEGER DEFAULT 0 NOT NULL,	 -- 0 : l'import est privé, 1 : l'import est public
  COMMENTS       CLOB,                           -- Commentaires
  LDAPENTRY      CLOB,                           -- Liste des groupes de notifications pour cette tâche
  CTRL_ATTR		 	 NUMBER(1) DEFAULT 1 NOT NULL,   --Contrôle des attrubuts
  CTRL_ATTR_LENGTH   NUMBER(1) DEFAULT 2 NOT NULL,   --Contrôle de la longueur de la valeur d'attribut
  CTRL_ATTR_INTERVAL NUMBER(1) DEFAULT 2 NOT NULL,   --Contrôle de la valeur d'attribut par rapport à un intrvalle de saisie
  CTRL_ATTR_ENUM		 NUMBER(1) DEFAULT 1 NOT NULL,   --Contrôle de la valeur d'attribut par rapport à une énumération de valeurs
  CTRL_CREATION_DATE NUMBER(1) DEFAULT 1 NOT NULL,   --Contrôle de la date de création
  CTRL_GEOM 		 INTEGER DEFAULT 118 NOT NULL,
  FOREIGN KEY(MODEL_ID) REFERENCES FLOWER.FW_IMPORT_MODEL(MODEL_ID),
  FOREIGN KEY(PROJECT_ID) REFERENCES FLOWER.FW_PROJECT(PROJECT_ID)
);
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT TO FW_USER;
GRANT SELECT, UPDATE ON FLOWER.FW_IMPORT TO FW_USER_SIG_ROLE;

-- ==============
-- import_lot
-- ==============
CREATE TABLE FLOWER.FW_IMPORT_LOT
(
  LOT_ID         INTEGER NOT NULL PRIMARY KEY,
  IMPORT_ID      INTEGER NOT NULL,
  AREA_VALUE     VARCHAR2(400),                  -- valeur de l'attribut de la classe de la zone
  STATUS         INTEGER DEFAULT 0 NOT NULL,
  PROGRESS       NUMBER  DEFAULT 0 NOT NULL,     -- etat d'avancement de ce lot
  ECODE          INTEGER DEFAULT 0 NOT NULL,
  DATA_PATH      VARCHAR2(260) NOT NULL,         -- chemin d'acces au lot de données (relatif au chemin base)
  REPORT         CLOB,
  FOREIGN KEY(IMPORT_ID) REFERENCES FLOWER.FW_IMPORT(IMPORT_ID)
);
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT_LOT TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_IMPORT_LOT TO FW_USER;

-- ==============
-- le masque d'affichage
-- ==============
CREATE TABLE FLOWER.FW_MASK_TASK
(
	TASK_IDENT 	INTEGER NOT NULL,				-- Identifiant de la tâche d’export ou d’import.
	TASK_TYPE  	NUMBER(1) DEFAULT 0  NOT NULL,	-- Type de la tâche liée.
	USER_NAME 	VARCHAR2(32) NOT NULL,          -- nom oracle de l'utilisateur
	IS_MASK 	NUMBER(1) DEFAULT 0 NOT NULL   -- masque ou affichage de la tâche
);
GRANT ALL PRIVILEGES ON FLOWER.FW_MASK_TASK  TO FW_ADMIN;
GRANT ALL PRIVILEGES ON FLOWER.FW_MASK_TASK  TO FW_USER;

-- ==============
-- les intervals
-- ==============
CREATE TABLE FLOWER.FW_INTERVAL
(
  CODE           INTEGER DEFAULT 0 NOT NULL,
  B_WEEKDAY      INTEGER NOT NULL,
  B_HOUR         INTEGER DEFAULT 0 NOT NULL,
  B_MINUTE       INTEGER DEFAULT 0 NOT NULL,
  E_HOUR         INTEGER DEFAULT 23 NOT NULL,
  E_MINUTE       INTEGER DEFAULT 59 NOT NULL
);
GRANT ALL PRIVILEGES ON FLOWER.FW_INTERVAL TO FW_ADMIN;
GRANT SELECT ON FLOWER.FW_INTERVAL TO FW_USER;

-- ==============
-- schedule
-- ==============
CREATE TABLE FLOWER.FW_SCHEDULE
(
  IDENT                 INTEGER NOT NULL PRIMARY KEY,	-- Identifiant de la planification
  TASK_IDENT            INTEGER NOT NULL,		-- Identifiant de la tâche d’export ou d’import.
  TASK_TYPE             NUMBER(1) DEFAULT 0  NOT NULL,	-- Type de la tâche liée.
  REPEAT_MODE           NUMBER(1) DEFAULT 0 NOT NULL,	-- Mode de répétition.
  INTERVAL              INTEGER DEFAULT 1 NOT NULL,	-- 1 à N. Nombre de jours, de semaines ou de mois.
  DAYS_OF_WEEK          VARCHAR2(15),			-- Liste ordonnée de numéro de 1 à 7 séparé par des virgules (1 = lundi…).
  DAY_IN_MONTH          INTEGER,			-- Jour dans le mois.
  DAY_OF_WEEK_IN_MONTH  VARCHAR2(5),			-- Liste des jours.
  MONTHS                VARCHAR2(25),			-- Liste des mois.
  START_DATE            TIMESTAMP,			-- Date de départ.
  START_TIME            TIMESTAMP,			-- Heure de planification
  LAST_START            TIMESTAMP,			-- Date et heure dernier démarrage
  NEXT_START            TIMESTAMP,			-- Date et heure prochain démarrage
  LDAPENTRY             CLOB,                           -- Liste des groupes de notifications
  TRY_COUNT             INTEGER DEFAULT 1 NOT NULL,     -- Nombre de tentative
  TRY_DAYSTEP           INTEGER DEFAULT 1 NOT NULL,     -- Delai en jour entre Deux tentatives
  NOTIF_DELAY           INTEGER DEFAULT 1 NOT NULL,     -- Delai entre la tentative avant import et l'import
  NOTIF_STATUS          INTEGER DEFAULT 0 NOT NULL,     -- Status de la notification : 1 = mail avant import envoyé
  COMMENTS              CLOB                            -- Commentaires
);
GRANT ALL PRIVILEGES ON FLOWER.FW_SCHEDULE TO FW_ADMIN;
GRANT SELECT ON FLOWER.FW_SCHEDULE TO FW_USER;

-- ==============
-- Controle
-- ==============
CREATE TABLE FLOWER.FW_CONTROL
(
  IDENT           INTEGER NOT NULL PRIMARY KEY,   --Identifiant du contrôle
  NAME            VARCHAR2(80) NOT NULL,          --Nom du contrôle, visible dans l'IHM
  DESCR           VARCHAR2(400) NOT NULL,         --Description plus complète du contrôle
  DLL             VARCHAR2(260) NOT NULL,         --Nom de la DLL qui contient la fonction à exécuter
  FUNCTION        VARCHAR2(40) NOT NULL           --Nom de la fonction à exécuter
);
GRANT ALL PRIVILEGES ON FLOWER.FW_CONTROL TO FW_ADMIN;
GRANT SELECT  ON FLOWER.FW_CONTROL TO FW_USER;

-- ==============
-- Liste des controles
-- ==============
CREATE TABLE FLOWER.FW_CONTROL_LIST
(
  GIS_DBASE    VARCHAR2(80) NOT NULL PRIMARY KEY, -- nom de la base de données APIC
  CTRL_IDENT   CLOB NOT NULL 			  -- identifiants des controles et leurs composants
);
GRANT ALL PRIVILEGES ON FLOWER.FW_CONTROL_LIST TO FW_ADMIN;
GRANT SELECT  ON FLOWER.FW_CONTROL_LIST TO FW_USER;

commit;


-- quelques données
INSERT INTO FLOWER.FW_FORMAT VALUES (FLOWER.FW_FORMAT_SEQ.NEXTVAL,'FEA',3,0,'.ASC','/',NULL,NULL,NULL,0);
INSERT INTO FLOWER.FW_FORMAT VALUES (FLOWER.FW_FORMAT_SEQ.NEXTVAL,'Edigeo - ApicEdigeo',3,1,'.THF','.THF',NULL,'paramétrage Edigeo Apic (*.par)|*.par','paramétrage Edigeo Apic (*.par)|*.par',3);
INSERT INTO FLOWER.FW_FORMAT VALUES (FLOWER.FW_FORMAT_SEQ.NEXTVAL,'DXF - ApicDxf',3,3,'.DXF','.DXF',NULL,'fichier de conditions (*.cnd)|*.cnd','fichier de correspondance (*.cor)|*.cor',3);
INSERT INTO FLOWER.FW_FORMAT VALUES (FLOWER.FW_FORMAT_SEQ.NEXTVAL,'MIF/MID - Fme',3,4,'.MIF','/','MIF','fichier de mapping(*.fme)|*.fme','fichier de mapping(*.fme)|*.fme',0);
INSERT INTO FLOWER.FW_FORMAT VALUES (FLOWER.FW_FORMAT_SEQ.NEXTVAL,'GXT - Fme',3,4,'.GXT','.GXT','GEOCONCEPT_READERWRITER','fichier de mapping(*.fme)|*.fme','fichier de mapping(*.fme)|*.fme',0);
INSERT INTO FLOWER.FW_FORMAT VALUES (FLOWER.FW_FORMAT_SEQ.NEXTVAL,'DXF - Fme',3,4,'.DXF','.DXF','ACAD','fichier de mapping(*.fme)|*.fme','fichier de mapping(*.fme)|*.fme',0);
INSERT INTO FLOWER.FW_FORMAT VALUES (FLOWER.FW_FORMAT_SEQ.NEXTVAL,'ESRI Shape - Fme',3,4,'.SHP','/','SHAPE','fichier de mapping(*.fme)|*.fme','fichier de mapping(*.fme)|*.fme',0);

commit;

-- ajout des controles standard
declare
  vControlDllPath varchar2(260):='P:\APIC5\controle_std_fr\bin\ControleStdFR.dll'; -- Chemin de la dll qui contient la fonction à exécuter
begin
 execute immediate 'INSERT INTO FLOWER.FW_CONTROL (SELECT FLOWER.FW_CONTROL_SEQ.NEXTVAL, ''SA_CtrlRecouvrementIntraObjet'',  ''Contrôler que les objets surfaciques ne se recouvrent pas eux-mêmes'',          '''||vControlDllPath||''', ''ControlesGeomIntersectionInterne''       FROM dual)';
 execute immediate 'INSERT INTO FLOWER.FW_CONTROL (SELECT FLOWER.FW_CONTROL_SEQ.NEXTVAL, ''SA_CtrlRecouvrementInterObjet'', ''Contrôler que les objets surfaciques ne se recouvrent pas deux à deux'',         '''||vControlDllPath||''', ''ControlesGeomIntersectionExterne''       FROM dual)';
 execute immediate 'INSERT INTO FLOWER.FW_CONTROL (SELECT FLOWER.FW_CONTROL_SEQ.NEXTVAL, ''SA_CtrlRelationGraphe'' ,''Contrôler que les objets arcs sont en relation avec strictement deux objets noeuds'',    '''||vControlDllPath||''', ''ControlesNetworkNoeudsEnRelation''       FROM dual)';
 execute immediate 'INSERT INTO FLOWER.FW_CONTROL (SELECT FLOWER.FW_CONTROL_SEQ.NEXTVAL, ''SA_CtrlLimiteGraphe'',''Contrôler que les extremités des objets arcs et les noeuds en relation sont confondus'' ,   '''||vControlDllPath||''', ''ControlesNetworkJunction''               FROM dual)';
 execute immediate 'INSERT INTO FLOWER.FW_CONTROL (SELECT FLOWER.FW_CONTROL_SEQ.NEXTVAL, ''SA_CtrlIdentiteLimite'',''Contrôler que la frontière entre deux objets est identique point à point'' ,              '''||vControlDllPath||''', ''ControlesGeomPointsFrontieresCommunes''  FROM dual)';
 execute immediate 'INSERT INTO FLOWER.FW_CONTROL (SELECT FLOWER.FW_CONTROL_SEQ.NEXTVAL, ''SA_CtrlEspaceInterObjet'',''Contrôler que les espaces clos existants entre deux objets ont une surface admissible'','''||vControlDllPath||''', ''ControlesGeomAjustementFrontieres''      FROM dual)';
end;
/

commit;

-- quit;
