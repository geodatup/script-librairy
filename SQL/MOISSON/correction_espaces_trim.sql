--- ddr_retenues ---
alter table SIG.ddr_retenues
add numex_varchar2 varchar2 (10);

update ddr_retenues
set numex_varchar2 = TRIM(numex);

update ddr_retenues
set numex = numex_varchar2;

--- ddr_barrieres ---
alter table SIG.ddr_barrieres
add numex_varchar2 varchar2 (10);

update ddr_barrieres
set numex_varchar2 = TRIM(numex);

update ddr_barrieres
set numex = numex_varchar2;

--- ddr_batiments ---
alter table SIG.ddr_batiments
add numex_varchar2 varchar2 (10);

update ddr_batiments
set numex_varchar2 = TRIM(numex);

update ddr_barrieres
set numex = numex_varchar2;

--- ddr_conduites ---
alter table SIG.ddr_conduites
add numex_varchar2 varchar2 (10);

update ddr_conduites
set numex_varchar2 = TRIM(numex);

update ddr_conduites
set numex = numex_varchar2;

--- ddr_expl_psud ---
alter table SIG.ddr_expl_psud
add numex_varchar2 varchar2 (10);

update ddr_expl_psud
set numex_varchar2 = TRIM(numex);

update ddr_expl_psud
set numex = numex_varchar2;

--- ddr_parcelles ---
alter table SIG.ddr_parcelles
add numex_varchar2 varchar2 (10);

update ddr_parcelles
set numex_varchar2 = TRIM(numex);

update ddr_parcelles
set numex = numex_varchar2;

--- ddr_points_eau ---
alter table SIG.ddr_points_eau
add numex_varchar2 varchar2 (10);

update ddr_points_eau
set numex_varchar2 = TRIM(numex);

update ddr_points_eau
set numex = numex_varchar2;


