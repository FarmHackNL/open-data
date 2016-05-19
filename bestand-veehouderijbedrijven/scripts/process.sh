#!/usr/bin/env bash

# the WFS has a faulty coordinate transformation
# hence we download it in native coord. sys. 
# and transform locally
echo 'Downloading GeoJSON in EPSG:28992...'
ogr2ogr -f GeoJSON temp.geojson WFS:"http://services.inspire-provincies.nl/AgriculturalAndAquacultureFacilities/services/download_AF"

echo 'Transforming to GeoJSON in WGS84 (lat/lng)...'
ogr2ogr -f GeoJSON ../data/bestand-veehouderijbedrijven.geojson -s_srs EPSG:28992 -t_srs EPSG:4326 -f GeoJSON temp.geojson
rm temp.geojson

echo 'Done!'