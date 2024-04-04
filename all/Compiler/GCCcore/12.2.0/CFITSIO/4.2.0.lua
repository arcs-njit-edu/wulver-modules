help([==[

Description
===========
CFITSIO is a library of C and Fortran subroutines for reading and writing data files in
FITS (Flexible Image Transport System) data format.


More information
================
 - Homepage: https://heasarc.gsfc.nasa.gov/fitsio/
]==])

whatis([==[Description: CFITSIO is a library of C and Fortran subroutines for reading and writing data files in
FITS (Flexible Image Transport System) data format.]==])
whatis([==[Homepage: https://heasarc.gsfc.nasa.gov/fitsio/]==])
whatis([==[URL: https://heasarc.gsfc.nasa.gov/fitsio/]==])

local root = "/apps/easybuild/software/CFITSIO/4.2.0-GCCcore-12.2.0"

conflict("CFITSIO")

if not ( isloaded("cURL/7.86.0") ) then
    load("cURL/7.86.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCFITSIO", root)
setenv("EBVERSIONCFITSIO", "4.2.0")
setenv("EBDEVELCFITSIO", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-CFITSIO-4.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
