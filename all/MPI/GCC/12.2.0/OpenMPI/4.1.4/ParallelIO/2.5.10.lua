help([==[

Description
===========
A high-level Parallel I/O Library for structured grid applications


More information
================
 - Homepage: https://github.com/NCAR/ParallelIO
]==])

whatis([==[Description: A high-level Parallel I/O Library for structured grid applications]==])
whatis([==[Homepage: https://github.com/NCAR/ParallelIO]==])
whatis([==[URL: https://github.com/NCAR/ParallelIO]==])

local root = "/apps/easybuild/software/ParallelIO/2.5.10-gompi-2022b"

conflict("ParallelIO")

if not ( isloaded("PnetCDF/1.12.3") ) then
    load("PnetCDF/1.12.3")
end

if not ( isloaded("netCDF-Fortran/4.6.0") ) then
    load("netCDF-Fortran/4.6.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTPARALLELIO", root)
setenv("EBVERSIONPARALLELIO", "2.5.10")
setenv("EBDEVELPARALLELIO", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-ParallelIO-2.5.10-easybuild-devel"))

setenv("PIO", "/apps/easybuild/software/ParallelIO/2.5.10-gompi-2022b")
-- Built with EasyBuild version 4.7.1
