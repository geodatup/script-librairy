#Controler les données MOISSON

select numex, count(*) from CS_CONTOUR_EXPLOITATION_1 group by numex having count(*)>1;
select num, count(*) from cs_abreuvoirs group by num having count(*)>1;
select num, count(*) from cs_barrieres group by num having count(*)>1;
select num, count(*) from cs_batiments group by num having count(*)>1;
select num, count(*) from CS_CONDUITES group by num having count(*)>1;
select num, count(*) from cs_abreuvoirs group by num having count(*)>1;
select num, count(*) from CS_CUVES group by num having count(*)>1;
select num, count(*) from CS_PARCELLES group by num having count(*)>1;
select num, count(*) from CS_PRISES_D_EAU group by num having count(*)>1;
select num, count(*) from CS_RETENUES group by num having count(*)>1;

SELECT t.ROWID as ogr_Fid,
       case when t.ORA_GEOMETRY is null
            then 'NULL: ORA_GEOMETRY IS NULL'
            when t.ORA_GEOMETRY.sdo_gtype < 2000
            then '13000: sdo_gtype < 2000'
            else MDSYS.SDO_GEOM.VALIDATE_GEOMETRY_WITH_CONTEXT(ORA_GEOMETRY,0.001)
        end as context,
       ORA_GEOMETRY as geom
  FROM CS_CONTOUR_EXPLOITATION_1 t
 WHERE t.ORA_GEOMETRY IS NOT NULL;

UPDATE CS_CONTOUR_EXPLOITATION_1 t
   SET t.ORA_GEOMETRY = NVL(MDSYS.SDO_UTIL.RECTIFY_GEOMETRY(ORA_GEOMETRY,0.001),ORA_GEOMETRY)
 WHERE MDSYS.SDO_GEOM.VALIDATE_GEOMETRY(ORA_GEOMETRY,0.001) <> 'TRUE'
   AND t.ORA_GEOMETRY IS NOT NULL;





UPDATE CS_RETENUES t
   SET t.ORA_GEOMETRY = NVL(MDSYS.SDO_UTIL.RECTIFY_GEOMETRY(ORA_GEOMETRY,0.001),ORA_GEOMETRY)
 WHERE MDSYS.SDO_GEOM.VALIDATE_GEOMETRY(ORA_GEOMETRY,0.001) <> 'TRUE'
   AND t.ORA_GEOMETRY IS NOT NULL;