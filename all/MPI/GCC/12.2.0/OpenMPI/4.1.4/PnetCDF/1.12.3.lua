help([==[

Description
===========
Parallel netCDF: A Parallel I/O Library for NetCDF File Access


More information
================
 - Homepage: https://parallel-netcdf.github.io/
]==])

whatis([==[Description: Parallel netCDF: A Parallel I/O Library for NetCDF File Access]==])
whatis([==[Homepage: https://parallel-netcdf.github.io/]==])
whatis([==[URL: https://parallel-netcdf.github.io/]==])

local root = "/apps/easybuild/software/PnetCDF/1.12.3-gompi-2022b"

conflict("PnetCDF")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPNETCDF", root)
setenv("EBVERSIONPNETCDF", "1.12.3")
setenv("EBDEVELPNETCDF", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-PnetCDF-1.12.3-easybuild-devel"))

prepend_path("PNETCDF", root)
-- Built with EasyBuild version 4.7.1
