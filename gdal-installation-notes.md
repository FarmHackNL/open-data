# Linux (Ubuntu)

In case you're running Ubuntu 16.04 'xenial' or higher, you can just

    sudo apt-get install gdal-bin

If you're running a lower Ubuntu version, you may need the [UbuntuGIS](https://launchpad.net/~ubuntugis/+archive/ubuntu/ppa) package archive first:

    sudo add-apt-repository ppa:ubuntugis/ppa
    sudo apt-get update
    sudo apt-get install gdal-bin

That's it! Run `ogr2ogr` to test whether everything works; you should see `ogr2ogr`'s help page.

**Bonus**: `sudo apt-get install qgis` to get QGIS.

For other distributions, please see instructions on the [GDAL](http://trac.osgeo.org/gdal/wiki/DownloadingGdalBinaries) and [QGIS](http://qgis.org/en/site/forusers/alldownloads.html#linux) websites.

# OS X

The most convenient way to install GDAL on OS X is through the [package](http://www.kyngchaos.com/files/software/frameworks/GDAL_Complete-1.11.dmg) maintained by [KyngChaos](http://www.kyngchaos.com/software/frameworks).

Run `ogr2ogr` in a terminal to test whether everythings works.

# Windows

While installing GDAL on Windows is easy, coupling it to a Bash environment requires an ugly hack.

1. install GDAL (and QGIS) through the [OSGeo4W](https://trac.osgeo.org/osgeo4w/) installer. Choose `Express Desktop Install`. This will install a bunch of geo softwares; we are interested in the `OSGeo4W Shell`.
2. install Git from https://git-scm.com/download. You now have a `Bash` terminal; look for `Git Bash` in your machine.
3. the ugly hack: copy everything from `C:\OSGeo4W\bin` to `C:\Program Files\git\bin`. Voilá: you have a `Bash` environment that can execute `gdal` commands.

Please let us know of a better and more elegant way to do this.
