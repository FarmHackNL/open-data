In deze repository staat een selectie van interessante open geo datasets. Elke dataset is opgebouwd volgens de [frictionless data standaard](http://data.okfn.org) van de Open Knowledge Foundation.

Elke `datapackage` is voorzien van metadata (`datapackage.json`) en `extract & transofrm` scripts (in `scripts/`) die geodata ophalen en naar GeoJSON + lat/lngs transformeren.

## benodigdheden 

- een Bash-like omgeving
- de `ogr2ogr` _command line utility_. Deze is onderdeel van de Geospatial Data Abstraction Library. See `gdal-installation-notes.md` for installation instructions for Linux, OS X and Windows.

## downloaden

Clone deze repository en voer `<dataset>/scripts/process.sh` uit om de data binnen te halen. `brp-percelen` haal je binnen door 

    git clone https://github.com/FarmHackNL/data
    cd brp-gewaspercelen/scripts/
    ./process.sh

De script haalt de data op, transformeert het (indien nodig) en slaat het op in `brp-gewaspercelen/data/`.

## gebruiken

Om geodata te zien en manipuleren heb je Geographical Information System software nodig.

- [QGIS](http://www.qgis.org/en/site/) - GIS op je desktop
- [PostGIS](http://postgis.net) - GIS in PostgresSQL
- [Turf.js](http://turfjs.org) - GIS in JavaScript (browser én desktop)

## documentatie 

Het gros van de data wordt via Web Feature Services binnengehaald. Op https://pdok-ngr.readthedocs.io lees je wat dat zijn en hoe je zelf data kan downloaden of rechtstreeks in je browser/app kan laden.