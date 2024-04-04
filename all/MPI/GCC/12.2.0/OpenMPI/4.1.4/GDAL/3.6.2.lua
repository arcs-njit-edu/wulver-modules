help([==[

Description
===========
GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.


More information
================
 - Homepage: https://www.gdal.org
]==])

whatis([==[Description: GDAL is a translator library for raster geospatial data formats that is released under an X/MIT style
 Open Source license by the Open Source Geospatial Foundation. As a library, it presents a single abstract data model
 to the calling application for all supported formats. It also comes with a variety of useful commandline utilities for
 data translation and processing.]==])
whatis([==[Homepage: https://www.gdal.org]==])
whatis([==[URL: https://www.gdal.org]==])

local root = "/apps/easybuild/software/GDAL/3.6.2-foss-2022b"

conflict("GDAL")

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("FFTW.MPI/3.3.10") ) then
    load("FFTW.MPI/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.2.0-fb") ) then
    load("ScaLAPACK/2.2.0-fb")
end

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("netCDF/4.9.0") ) then
    load("netCDF/4.9.0")
end

if not ( isloaded("expat/2.4.9") ) then
    load("expat/2.4.9")
end

if not ( isloaded("GEOS/3.11.1") ) then
    load("GEOS/3.11.1")
end

if not ( isloaded("SQLite/3.39.4") ) then
    load("SQLite/3.39.4")
end

if not ( isloaded("libpng/1.6.38") ) then
    load("libpng/1.6.38")
end

if not ( isloaded("libjpeg-turbo/2.1.4") ) then
    load("libjpeg-turbo/2.1.4")
end

if not ( isloaded("JasPer/4.0.0") ) then
    load("JasPer/4.0.0")
end

if not ( isloaded("LibTIFF/4.4.0") ) then
    load("LibTIFF/4.4.0")
end

if not ( isloaded("cURL/7.86.0") ) then
    load("cURL/7.86.0")
end

if not ( isloaded("PCRE/8.45") ) then
    load("PCRE/8.45")
end

if not ( isloaded("PROJ/9.1.1") ) then
    load("PROJ/9.1.1")
end

if not ( isloaded("libgeotiff/1.7.1") ) then
    load("libgeotiff/1.7.1")
end

if not ( isloaded("SciPy-bundle/2023.02") ) then
    load("SciPy-bundle/2023.02")
end

if not ( isloaded("HDF5/1.14.0") ) then
    load("HDF5/1.14.0")
end

if not ( isloaded("HDF/4.2.15") ) then
    load("HDF/4.2.15")
end

if not ( isloaded("Armadillo/11.4.3") ) then
    load("Armadillo/11.4.3")
end

if not ( isloaded("CFITSIO/4.2.0") ) then
    load("CFITSIO/4.2.0")
end

if not ( isloaded("zstd/1.5.2") ) then
    load("zstd/1.5.2")
end

if not ( isloaded("giflib/5.2.1") ) then
    load("giflib/5.2.1")
end

if not ( isloaded("json-c/0.16") ) then
    load("json-c/0.16")
end

if not ( isloaded("Xerces-C++/3.2.4") ) then
    load("Xerces-C++/3.2.4")
end

if not ( isloaded("PCRE2/10.40") ) then
    load("PCRE2/10.40")
end

if not ( isloaded("OpenEXR/3.1.5") ) then
    load("OpenEXR/3.1.5")
end

if not ( isloaded("Brunsli/0.1") ) then
    load("Brunsli/0.1")
end

if not ( isloaded("Qhull/2020.2") ) then
    load("Qhull/2020.2")
end

if not ( isloaded("LERC/4.0.0") ) then
    load("LERC/4.0.0")
end

if not ( isloaded("OpenJPEG/2.5.0") ) then
    load("OpenJPEG/2.5.0")
end

prepend_path("CMAKE_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDAL", root)
setenv("EBVERSIONGDAL", "3.6.2")
setenv("EBDEVELGDAL", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-GDAL-3.6.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
