help([==[

Description
===========
The Model for Prediction Across Scales (MPAS) is a collaborative project for developing atmosphere, ocean, and other earth-system simulation components for use in climate, regional climate, and weather studies


More information
================
 - Homepage: https://github.com/MPAS-Dev/MPAS-Model
]==])

whatis([==[Description: The Model for Prediction Across Scales (MPAS) is a collaborative project for developing atmosphere, ocean, and other earth-system simulation components for use in climate, regional climate, and weather studies]==])
whatis([==[Homepage: https://github.com/MPAS-Dev/MPAS-Model]==])
whatis([==[URL: https://github.com/MPAS-Dev/MPAS-Model]==])

local root = "/apps/easybuild/software/MPAS/8.0.1-foss-2022b"

conflict("MPAS")

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

if not ( isloaded("ParallelIO/2.5.10") ) then
    load("ParallelIO/2.5.10")
end

if not ( isloaded("PnetCDF/1.12.3") ) then
    load("PnetCDF/1.12.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMPAS", root)
setenv("EBVERSIONMPAS", "8.0.1")
setenv("EBDEVELMPAS", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-MPAS-8.0.1-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
