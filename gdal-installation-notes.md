# Linux (Ubuntu)

The easiest way to install GDAL on Ubuntu is through the [UbuntuGIS](https://launchpad.net/~ubuntugis/+archive/ubuntu/ppa) Personal Package Archive.

1. `sudo add-apt-repository ppa:ubuntugis/ppa`
2. `sudo apt-get update`
3. `sudo apt-get install gdal`

That's it! Run `ogr2ogr` to test whether everything works; you should `ogr2ogr`'s help page.

**Bonus**: `sudo apt-get install qgis` to get QGIS.

# OS X
TODO


# Windows

While installing GDAL on Windows is easy, coupling it to a Bash environment requires some hacks.

1. intsall GDAL through the OSGeo4W installer
2. TODO ...
