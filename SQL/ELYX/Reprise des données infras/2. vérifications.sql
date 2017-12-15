
-- On vérifie que les attributs à mettre à jour ne sont pas déjà renseignés

select distinct mat from dpmdat.georep;
select distinct code_prec from dpmdat.georep;
select distinct h_ellip from dpmdat.georep;

select distinct mat from dpmdat.gporep;
select distinct code_prec from dpmdat.gporep;
select distinct h_ellip from dpmdat.gporep;

select distinct mat from dpmdat.gnirep;
select distinct code_prec from dpmdat.gnirep;
select distinct h_ellip from dpmdat.gnirep;


-- On vérifie que le nombre d'objets dans le fichier Excel issu d'Ascodes est le même que celui dans Elyx
select count(*) from dpmdat.georep;
select count(*) from dpmdat.gporep;
select count(*) from dpmdat.gnirep;


-- On s'assure que nummero est not null et unique

select count(*) from dpmdat.georep where numero is null;  -- doit etre egal à 0
select (select count(*) from dpmdat.georep) nb_obj, (select count(*) from (select distinct numero from dpmdat.georep)) nb_obj_unique from dual;  -- doit retourner le meme nombre

select count(*) from dpmdat.gporep where numero is null;  -- doit etre egal à 0
select (select count(*) from dpmdat.gporep) nb_obj, (select count(*) from (select distinct numero from dpmdat.gporep)) nb_obj_unique from dual;  -- doit retourner le meme nombre

select count(*) from dpmdat.gnirep where numero is null;  -- doit etre egal à 0
select (select count(*) from dpmdat.gnirep) nb_obj, (select count(*) from (select distinct numero from dpmdat.gnirep)) nb_obj_unique from dual;  -- doit retourner le meme nombre



