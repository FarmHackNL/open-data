In deze repository vind e een selectie van interessante open geo datasets. Elke dataset is opgebouwd volgens de [frictionless data standaard](http://data.okfn.org) van de Open Knowledge Foundation. **Nieuwsgierig**? Zie `Data Packages`.

**Wil je z.s.m. de data downloaden**? Ga naar de [data.ndkv.nl/farmhack/](https://data.ndkv.nl/farmhack/). De `agrarisch-areaal-nederland` dataset vind je bijv. op [https://data.ndkv.nl/farmhack/open-data/agrarisch-areaal-nederland/data](https://data.ndkv.nl/farmhack/open-data/agrarisch-areaal-nederland/data).

Het gros van de FarmHack gegevens datasets een ruimtelijk component. Gebruik een van onderstaande om de geodata te transformeren, analyseren en visualiseren.

- [CartoDB](https://cartodb.com) - Geodata in de browser
- [QGIS](http://www.qgis.org/en/site/) - Geodata op de desktop
- [PostGIS](http://postgis.net) - Geo plug-in voor PostgresSQL
- [Turf.js](http://turfjs.org) - Geo in JavaScript (browser én desktop)

# Data packages
> [...] lightweight "packaging" format for data that provide a basis for convenient publication, installation and management of datasets.
>
> They aim to deliver functionality similar to "packaging" in software and "containerization" in shipping: a simple wrapper and basic structure for transportation of data that significantly reduces the friction in data sharing and integration, supports automation and does this without imposing major changes on the underlying data being packaged.

Een `data package` bestaat uit een `build script`, `meta data` en evt. de `data` zelf. Het ophalen van data geschiedt door de `build script` in `<data-package>/scripts/` uit te voeren.

# Waarom data packages?
TODO

# lokaal installeren

## benodigdheden

- een Bash-like omgeving
- de `ogr2ogr` _command line utility_. Deze is onderdeel van de Geospatial Data Abstraction Library. See `gdal-installation-notes.md` for installation instructions for Linux, OS X and Windows.

## downloaden

Clone deze repository en voer `<dataset>/scripts/process.sh` uit om de data binnen te halen. `brp-percelen` haal je binnen door 

    git clone https://github.com/FarmHackNL/data
    cd brp-gewaspercelen/scripts/
    ./process.sh

De script haalt de data op, transformeert het (indien nodig) en slaat het op in `brp-gewaspercelen/data/`.

## documentatie 

Het gros van de data wordt via Web Feature Services binnengehaald. Op [https://pdok-ngr.readthedocs.io](https://pdok-ngr.readthedocs.io) lees je wat dat zijn en hoe je zelf data kan downloaden of rechtstreeks in je browser/app kan laden.