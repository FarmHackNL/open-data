In deze repository staat een selectie van interessante open geo datasets. Elke dataset is opgebouwd volgens de [frictionless data standaard](http://data.okfn.org) van de Open Knowledge Foundation. Elke `datapackage` is voorzien van metadata (`datapackage.json`) en `extract & transofrm` scripts (in `scripts/`) die geodata ophalen en naar GeoJSON + lat/lngs transformeren.

## benodigdheden 

- een Bash-like omgeving
- de `ogr2ogr` _command line utility_. Deze is onderdeel van GDAL [OS X][Windows]

## downloaden

Clone deze repository en voer `<dataset>/scripts/process.sh` uit om de data binnen te halen. `brp-percelen` haal je binnen door 

    git clone https://github.com/FarmHackNL/data
    cd brp-gewaspercelen/scripts/
    ./process.sh
    
De data vind je in `brp-gewaspercelen/data/`.

## gebruiken

- QGIS - GIS op je desktop
- PostGIS - GIS in Posgres
- [Turf.js](http://turfjs.org) - GIS in JavaScript

## documentatie 

https://pdok-ngr.readthedocs.io
