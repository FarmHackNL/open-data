In deze repository vind je een selectie van interessante (landelijke) open geo datasets. Elke dataset is opgebouwd volgens de [frictionless data standaard](http://data.okfn.org) van de Open Knowledge Foundation.

**Nieuwsgierig**? Lees verder bij `Data packages`.

**Direct data downloaden**? Ga naar [data.farmhack.nl](https://data.farmhack.nl/open-data).

**Vragen, tips en data requests**? Plaats ze in de [issue tracker](https://github.com/FarmHackNL/open-data/issues).

Het gros van de FarmHack  datasets heeft een ruimtelijk component. Gebruik één van onderstaande (web) applicaties om de geodata te transformeren, te analyseren en/of te visualiseren.

- [CartoDB](https://cartodb.com) - Geodata in de browser
- [QGIS](http://www.qgis.org/en/site/) - Geodata op de desktop
- [PostGIS](http://postgis.net) - Geodata plug-in voor PostgresSQL
- [Turf.js](http://turfjs.org) - Geodata in JavaScript (browser én desktop)
- [GDAL](http://www.gdal.org) - Geodata in de terminal. In [gdal-installation-notes.md](https://github.com/FarmHackNL/open-data/blob/master/gdal-installation-notes.md) lees je hoe je GDAL op Linux, OS X en Windows kan installeren.

We adviseren je deze tools voor aanvang van de FarmHack te installeren. **Vooral QGIS is een must have: hiermee kun je o.a. geodata slicen en naar andere bestandsformats tranformeren bijv. van Shapefile naar GeoJSON.**

# Data packages
> [...] lightweight "packaging" format for data that provide a basis for convenient publication, installation and management of datasets.
>
> They aim to deliver functionality similar to "packaging" in software and "containerization" in shipping: a simple wrapper and basic structure for transportation of data that significantly reduces the friction in data sharing and integration, supports automation and does this without imposing major changes on the underlying data being packaged.

Een `data package` bestaat uit een `build script`, `meta data` en evt. de `data` zelf. De `build script` haal de data op, schoont het op, transformeert het en koppelt het evt. aan andere datasets. Elke map in deze repository is een `data package`.

# Waarom data packages?

`Data packages` automatiseren het binnenhalen, opschonen, transformeren en koppelen van de data. Ze maken het tijdrovende [extract, transform, load](https://en.wikipedia.org/wiki/Extract,_transform,_load) proces expliciet, en inzichtelijk. Belangrijker: ze stellen anderen/de gemeenschap in staat het download recept te verbeteren en uit te breiden.

Op den duur resulteert dit in een verzameling bruikbare datasets die je met één commando/klik binnen kunt halen. Zie bijv. de [Data Packaged Core Datasets](https://github.com/datasets) initiatief van de Open Knowledge Foundation.

Het streven is om een soortgelijke repository voor Nederlandse agri data te verwezenlijken.

# FarmHack data packages installeren

## benodigdheden

- een Bash-like omgeving
- de `ogr2ogr` _command line utility_. Deze is onderdeel van de Geospatial Data Abstraction Library. See [gdal-installation-notes.md](https://github.com/FarmHackNL/open-data/blob/master/gdal-installation-notes.md) for installation instructions for Linux, OS X and Windows.

## downloaden

Clone deze repository en voer `<dataset>/scripts/process.sh` uit om de data binnen te halen. `brp-percelen` haal je binnen door 

    git clone https://github.com/FarmHackNL/open-data
    cd open-data/brp-gewaspercelen/scripts/
    ./process.sh

De script haalt de data op, transformeert het (indien nodig) en slaat het op in `brp-gewaspercelen/data/`.

## documentatie 

Het gros van de data wordt via Web Feature Services binnengehaald. Op [https://pdok-ngr.readthedocs.io](https://pdok-ngr.readthedocs.io) lees je wat dat zijn en hoe je zelf data kan downloaden of rechtstreeks in je browser/app kan laden.
