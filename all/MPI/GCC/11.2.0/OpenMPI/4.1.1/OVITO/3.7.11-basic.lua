help([==[

Description
===========
OVITO is a scientific visualization and data analysis solution for atomistic and other particle-based
models. It helps scientists gain meaningful and quick insights from numerical simulation results.


More information
================
 - Homepage: https://www.ovito.org
]==])

whatis([==[Description: OVITO is a scientific visualization and data analysis solution for atomistic and other particle-based
models. It helps scientists gain meaningful and quick insights from numerical simulation results.]==])
whatis([==[Homepage: https://www.ovito.org]==])
whatis([==[URL: https://www.ovito.org]==])

local root = "/apps/easybuild/software/OVITO/3.7.11-gompi-2021b-basic"

conflict("OVITO")

if not ( isloaded("Qt5/5.15.2") ) then
    load("Qt5/5.15.2")
end

if not ( isloaded("HDF5/1.12.1") ) then
    load("HDF5/1.12.1")
end

if not ( isloaded("netCDF/4.8.1") ) then
    load("netCDF/4.8.1")
end

if not ( isloaded("FFmpeg/4.3.2") ) then
    load("FFmpeg/4.3.2")
end

if not ( isloaded("Boost/1.77.0") ) then
    load("Boost/1.77.0")
end

if not ( isloaded("libglvnd/1.3.3") ) then
    load("libglvnd/1.3.3")
end

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOVITO", root)
setenv("EBVERSIONOVITO", "3.7.11")
setenv("EBDEVELOVITO", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-OVITO-3.7.11-basic-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
