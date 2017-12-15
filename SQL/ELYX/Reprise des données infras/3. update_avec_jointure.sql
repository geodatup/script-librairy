

-- Ouvrir SQL Developper, ouvrir une connexion puis clic droit sur Tables, et "Importer des donn�es" et choisir un fichier csv qui contient des virgules comme s�parateur
-- Il doit y avoir une colonne IDENTSTF qui est l'identifiant unique et qui va servir pour faire les jointures
-- Il faut cr�er les tables georep_temp, gnirep_temp, et gporep_temp


-- Mise � jour de georep � partir de georep_temp
update dpmdat.georep dest set dest.code_prec = (select code_prec from georep_temp sourc where dest.identstf = sourc.identstf) where exists (select 1 from georep_temp sourc where dest.identstf = sourc.identstf);
update dpmdat.georep dest set dest.h_ellip = (select h_ellip from georep_temp sourc where dest.identstf = sourc.identstf) where exists (select 1 from georep_temp sourc where dest.identstf = sourc.identstf);


-- Mise � jour de gnirep � partir de gnirep_temp
update dpmdat.gnirep dest set dest.code_prec = (select code_prec from gnirep_temp sourc where dest.identstf = sourc.identstf) where exists (select 1 from gnirep_temp sourc where dest.identstf = sourc.identstf);
update dpmdat.gnirep dest set dest.h_ellip = (select h_ellip from gnirep_temp sourc where dest.identstf = sourc.identstf) where exists (select 1 from gnirep_temp sourc where dest.identstf = sourc.identstf);


-- Mise � jour de gporep � partir de gporep_temp
update dpmdat.gporep dest set dest.code_prec = (select code_prec from gporep_temp sourc where dest.identstf = sourc.identstf) where exists (select 1 from gporep_temp sourc where dest.identstf = sourc.identstf);
update dpmdat.gporep dest set dest.h_ellip = (select h_ellip from gporep_temp sourc where dest.identstf = sourc.identstf) where exists (select 1 from gporep_temp sourc where dest.identstf = sourc.identstf);