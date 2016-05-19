#!/usr/bin/env bash

mkdir ../data
cd ../data

curl http://geodata.nationaalgeoregister.nl/brpgewaspercelen/extract/2015-definitief/brpgewaspercelen.zip > brpgewaspercelen.zip

unzip brpgewaspercelen.zip

# transform the ESRI GeoDatabase in a ShapeFile
ogr2ogr -f "ESRI Shapefile" brpgewaspercelen.shp BRP_Gewaspercelen_2015.gdb

# WARNING: This results in an unworkable 1.1 GB GeoJSON file
# ogr2ogr -f GeoJSON brpgewaspercelen.geojson BRP_Gewaspercelen_2015.gdb
