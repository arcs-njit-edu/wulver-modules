help([==[

Description
===========
LIGGGHTS is an open source Discrete Element Method (DEM) software


More information
================
 - Homepage: http://www.liggghts.com
]==])

whatis([==[Description: LIGGGHTS is an open source Discrete Element Method (DEM) software]==])
whatis([==[Homepage: http://www.liggghts.com]==])
whatis([==[URL: http://www.liggghts.com]==])

local root = "/apps/easybuild/software/LIGGGHTS-PUBLIC/3.8.0-foss-2021b-kokkos-CUDA-11.4.1"

conflict("LIGGGHTS-PUBLIC")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("LAMMPS/23Jun2022-kokkos-CUDA-11.4.1") ) then
    load("LAMMPS/23Jun2022-kokkos-CUDA-11.4.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLIGGGHTSMINPUBLIC", root)
setenv("EBVERSIONLIGGGHTSMINPUBLIC", "3.8.0")
setenv("EBDEVELLIGGGHTSMINPUBLIC", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-LIGGGHTS-PUBLIC-3.8.0-kokkos-CUDA-11.4.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
