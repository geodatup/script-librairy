# extraire les layers du gpx dans une base sqlite
```bash 
set DATA_OUT_DIR=\\LA-NASSE\Flotsam\public\voyage\gpx\Papa-GPX\Amerique_sud
set DATA_IN_DIR=\\LA-NASSE\Flotsam\public\voyage\gpx\Papa-GPX\Amerique_sud
dir /b %DATA_IN_DIR%\*.gpx>"file.txt"
for /f "tokens=*" %a IN (file.txt) do (
ogr2ogr -f sqlite "%DATA_OUT_DIR%\%a.sqlite" "%DATA_IN_DIR%\%a"

)

set PYTHON_SCRIPT_DIR=C:\Users\Yogis\Documents\Projets\script\Python\gdal_ogr
dir /b %DATA_IN_DIR%\*.sqlite>"file.txt"

for /f "tokens=*" %a IN (file.txt) do (
python %PYTHON_SCRIPT_DIR%\ogr2unionvrt.py "%DATA_IN_DIR%\%a" "%DATA_OUT_DIR%\%a.txt" tracks
)
@echo ^<OGRVRTDataSource^>^<OGRVRTUnionLayer name="Union_tracks"^> > "%DATA_OUT_DIR%\tracks.vrt"
type "%DATA_OUT_DIR%\*.txt" >> "%DATA_OUT_DIR%\tracks.vrt"
@echo ^</OGRVRTUnionLayer^>^</OGRVRTDataSource^> >> "%DATA_OUT_DIR%\tracks.vrt"


```
