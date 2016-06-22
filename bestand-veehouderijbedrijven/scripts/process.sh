#!/usr/bin/env bash

echo 'Downloading GeoJSON in EPSG:28992...'
curl "http://services.inspire-provincies.nl/AgriculturalAndAquacultureFacilities/services/download_AF?request=getfeature&service=wfs&version=2.0.0&typename=app:Stalgroep&srsname=EPSG:28992" > temp.gml

echo 'Transforming to GeoJSON in WGS84 (lat/lng)...'
ogr2ogr -f GeoJSON ../data/bestand-veehouderijbedrijven.geojson -s_srs EPSG:28992 -t_srs EPSG:4326 -f GeoJSON temp.gml

echo 'Cleaning up'
rm temp.gml

echo 'Done!'