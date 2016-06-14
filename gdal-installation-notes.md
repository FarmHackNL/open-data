# Linux (Ubuntu)

The easiest way to install GDAL on Ubuntu is through the [UbuntuGIS](https://launchpad.net/~ubuntugis/+archive/ubuntu/ppa) Personal Package Archive.

1. `sudo add-apt-repository ppa:ubuntugis/ppa`
2. `sudo apt-get update`
3. `sudo apt-get install gdal`

That's it! Run `ogr2ogr` to test whether everything works; you should see `ogr2ogr`'s help page.

**Bonus**: `sudo apt-get install qgis` to get QGIS.

# OS X

The most convenient way to install GDAL on OS X is through the [package](http://www.kyngchaos.com/files/software/frameworks/GDAL_Complete-1.11.dmg) maintained by [KyngChaos](http://www.kyngchaos.com/software/frameworks).

Run `ogr2ogr` in a terminal to test whether everythings works.

# Windows

While installing GDAL on Windows is easy, coupling it to a Bash environment requires an ugly hack.

1. install GDAL (and QGIS) through the [OSGeo4W](https://trac.osgeo.org/osgeo4w/) installer. Choose `Express Desktop Install`. This will install a bunch of geo softwares; we are interested in the `OSGeo4W Shell`.
2. install Git from https://git-scm.com/download. You now have a `Bash` terminal; look for `Git Bash` in your machine.
3. the ugly hack: copy everything from `C:\OSGeo4W\bin` to `C:\Program Files\git\bin`. Voilá: you have a `Bash` environment that can execute `gdal` commands.

Please let us know of a better and more elegant way to do this.
