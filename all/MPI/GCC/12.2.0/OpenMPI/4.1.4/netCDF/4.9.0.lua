help([==[

Description
===========
NetCDF (network Common Data Form) is a set of software libraries
 and machine-independent data formats that support the creation, access, and sharing of array-oriented
 scientific data.


More information
================
 - Homepage: https://www.unidata.ucar.edu/software/netcdf/
]==])

whatis([==[Description: NetCDF (network Common Data Form) is a set of software libraries
 and machine-independent data formats that support the creation, access, and sharing of array-oriented
 scientific data.]==])
whatis([==[Homepage: https://www.unidata.ucar.edu/software/netcdf/]==])
whatis([==[URL: https://www.unidata.ucar.edu/software/netcdf/]==])

local root = "/apps/easybuild/software/netCDF/4.9.0-gompi-2022b"

conflict("netCDF")

if not ( isloaded("HDF5/1.14.0") ) then
    load("HDF5/1.14.0")
end

if not ( isloaded("cURL/7.86.0") ) then
    load("cURL/7.86.0")
end

if not ( isloaded("Szip/2.1.1") ) then
    load("Szip/2.1.1")
end

if not ( isloaded("zstd/1.5.2") ) then
    load("zstd/1.5.2")
end

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNETCDF", root)
setenv("EBVERSIONNETCDF", "4.9.0")
setenv("EBDEVELNETCDF", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-netCDF-4.9.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
