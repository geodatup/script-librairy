try:
    from osgeo import osr, ogr, gdal
except ImportError:
    import osr, ogr, gdal

import sys
#############################################################################

#############################################################################

def Usage():
    print('Usage: gdalinfolayers.py in_datasource ')
    print('')
    sys.exit(1)



#############################################################################
# Argument processing.

infile = None


argv = gdal.GeneralCmdLineProcessor( sys.argv )
if argv is None:
    sys.exit( 0 )

i = 1
while i < len(argv):
	arg = argv[i]
	if infile is None:
		infile = arg
	elif outfile is None:
		outfile = arg
	i = i + 1



#############################################################################
# Open the datasource to read.

src_ds = ogr.Open( infile, update = 0 )

for layer in src_ds:
    print layer.GetLayerDefn().GetName()

#infolayers=[]
#
#for layer in src_ds:
#        infolayers.append( layer.GetLayerDefn().GetName() )
#
#with open( outfile , "wb") as f:
#    writer = csv.writer(f)
#    for layer in infolayers:
#        writer.writerow([layer, src_ds.GetName()])#