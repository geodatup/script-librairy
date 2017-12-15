DECLARE
  nomSchema VARCHAR2(30) := '&1';  -- schéma contenant la table
  nomTable  VARCHAR2(23) := '&2';  -- nom de la table à versionner
  nomRole   VARCHAR2(30) := '&3';  -- rôle qui peut accèder à la vue nomTable_DIFF

BEGIN
  EXECUTE IMMEDIATE 'call sys.lt.enableversioning ('''||nomSchema||'.'||nomTable||''')';
  EXECUTE IMMEDIATE 'grant SELECT on '||nomSchema||'.'||nomTable||'_DIFF to '||nomRole;
  BEGIN
    EXECUTE IMMEDIATE 'call sys.lt.enableversioning ('''||nomSchema||'.'||nomTable||'_AR'')';
    EXECUTE IMMEDIATE 'grant SELECT on '||nomSchema||'.'||nomTable||'_AR to '||nomRole;
    EXCEPTION
      WHEN OTHERS THEN
      NULL;
  END;
END;