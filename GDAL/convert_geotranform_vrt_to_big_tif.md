
# Imagery IGN 2015


~~~
dir /b C:\Users\Yogis\Dropbox\developpement\lizmap\data\imagery\rouyre-2015\*.jpg > rouyre_2015.txt
set DATA_DIR=C:\Users\Yogis\Dropbox\developpement\lizmap\data\imagery\rouyre-2015\
for /f %a IN (rouyre_2015.txt) do c:/OSGeo4W64\bin\gdalwarp -of GTiff -co tiled=yes -co "TFW=YES" -dstnodata 0 "%DATA_DIR%\%a" "C:\Users\Yogis\Dropbox\developpement\lizmap\data\imagery\rouyre-2015\warp\%a"
~~~

~~~
c:/OSGeo4W64/bin/gdalbuildvrt C:\Users\Yogis\Dropbox\developpement\lizmap\data\imagery\rouyre-2015\rouyre_jpg.vrt C:\Users\Yogis\Dropbox\developpement\lizmap\data\imagery\rouyre-2015\warp\*.jpg
~~~

~~~
c:/OSGeo4W64\bin\gdal_translate -of Gtiff -co "COMPRESS=LZW" -co "TFW=YES" -co "BIGTIFF=YES" "C:\Users\Yogis\Dropbox\developpement\lizmap\data\imagery\rouyre-2015\rouyre_jpg.vrt" "C:\Users\Yogis\Dropbox\developpement\lizmap\data\imagery\rouyre-2015\rouyre_2015.tiff"
~~~

# Cadastre 2015
~~~
dir /b C:\Users\Yogis\Documents\GIS_DataBase\cadastre\gouv\Rouyre\*.jpg > rouyre_cadastre.txt
set DATA_DIR=C:\Users\Yogis\Documents\GIS_DataBase\cadastre\gouv\Rouyre\
for /f %a IN (rouyre_cadastre.txt) do c:/OSGeo4W64\bin\gdalwarp -of GTiff -co tiled=yes -co "TFW=YES" -dstnodata 255 "%DATA_DIR%\%a" "C:\Users\Yogis\Documents\GIS_DataBase\cadastre\gouv\Rouyre\warp\%a"
~~~
~~~
c:/OSGeo4W64/bin/gdalbuildvrt C:\Users\Yogis\Documents\GIS_DataBase\cadastre\gouv\Rouyre\rouyre_jpg.vrt C:\Users\Yogis\Documents\GIS_DataBase\cadastre\gouv\Rouyre\warp\*.jpg
~~~

~~~
 c:/OSGeo4W64\bin\gdal_translate -of Gtiff -co "COMPRESS=LZW" -co "TFW=YES" -co "BIGTIFF=YES" "C:\Users\Yogis\Documents\GIS_DataBase\cadastre\gouv\Rouyre\rouyre_jpg.vrt" "C:\Users\Yogis\Documents\GIS_DataBase\cadastre\gouv\Rouyre\rouyre_cadastre.tiff"
~~~

