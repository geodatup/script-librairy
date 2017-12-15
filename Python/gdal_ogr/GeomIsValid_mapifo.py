import ogr
import osr
import os
import csv


# set up the driver
driver = ogr.GetDriverByName("Mapinfo file")

#ODefine the datasource
#data = r"M:/VECTEURS/PSUD/Agriculture/Moisson/Tables Moisson - livraison 20140428/Parcelles_MoissonG.tab"
data = r"M:/VECTEURS/PSUD/Agriculture/Moisson/Tables Moisson - livraison 20140707/Contour_Exploitations_MoissonG.tab"
dataSource = driver.Open(data,0)

# create the OUT data source
#outDataSource = driver.CreateDataSource("C:/error.shp")


# create the spatial reference, RGNC
srs = osr.SpatialReference()
srs.ImportFromEPSG(3163)


layer = dataSource.GetLayer()

#outLayer = outDataSource.CreateLayer("error", srs, geom_type=ogr.wkbMultiPolygon)
field_name = ogr.FieldDefn("num", ogr.OFTString)
field_name.SetWidth(24)
#outLayer.CreateField(field_name)
badFeature = []

for feature in layer:
    geom = feature.GetGeometryRef()
    validate = ogr.Geometry.IsValid(geom)
    if validate is False:
    	#badFeature = ogr.Feature(outLayer.GetLayerDefn())    	
    	#badFeature.SetGeometry(geom)     	
    	print validate, feature.num    
    	badFeature.append(feature.num)
    	#outLayer.CreateFeature(badFeature)
    	#badFeature.Destroy()

print len(badFeature)

with open("V:\DDR\Traduction_error\contour.csv", "wb") as f:
	writer = csv.writer(f)
        for val in badFeature:
            writer.writerow([val])
