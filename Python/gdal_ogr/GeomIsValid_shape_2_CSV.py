import ogr
import osr
import os
import csv


# set up the driver
driver = ogr.GetDriverByName("ESRI Shapefile")

#ODefine the datasource
data = r"D:/gisdata/010_basemaps/pdfEVG/product/shapefiles/Map_Interior_LakeresA.shp"
dataSource = driver.Open(data,0)

# create the OUT data source
#outDataSource = driver.CreateDataSource("C:/error.shp")


# create the spatial reference, RGNC
srs = osr.SpatialReference()
srs.ImportFromEPSG(32646)


layer = dataSource.GetLayer()

#outLayer = outDataSource.CreateLayer("error", srs, geom_type=ogr.wkbMultiPolygon)
field_name = ogr.FieldDefn("FID", ogr.OFTString)
field_name.SetWidth(24)
#outLayer.CreateField(field_name)
badFeature = []

for feature in layer:
    geom = feature.GetGeometryRef()
    validate = ogr.Geometry.IsValid(geom)
    if validate is False:
    	#badFeature = ogr.Feature(outLayer.GetLayerDefn())    	
    	#badFeature.SetGeometry(geom)     	
    	print validate, feature.FID    
    	badFeature.append(feature.FID)
    	#outLayer.CreateFeature(badFeature)
    	#badFeature.Destroy()

print len(badFeature)

with open("c:\error_geom.csv", "wb") as f:
	writer = csv.writer(f)
        for val in badFeature:
            writer.writerow([val])
