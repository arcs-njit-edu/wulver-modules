help([==[

Description
===========
GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the
Newtonian equations of motion for systems with hundreds to millions of
particles.

This is a GPU enabled build, containing both MPI and threadMPI builds.

It also contains the gmxapi extension for the single precision MPI build.


More information
================
 - Homepage: https://www.gromacs.org


Included extensions
===================
gmxapi-0.2.2.1
]==])

whatis([==[Description: 
GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the
Newtonian equations of motion for systems with hundreds to millions of
particles.

This is a GPU enabled build, containing both MPI and threadMPI builds.

It also contains the gmxapi extension for the single precision MPI build.
]==])
whatis([==[Homepage: https://www.gromacs.org]==])
whatis([==[URL: https://www.gromacs.org]==])
whatis([==[Extensions: gmxapi-0.2.2.1]==])

local root = "/apps/easybuild/software/GROMACS/2021.5-foss-2021b-CUDA-11.4.1"

conflict("GROMACS")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

if not ( isloaded("SciPy-bundle/2021.10") ) then
    load("SciPy-bundle/2021.10")
end

if not ( isloaded("networkx/2.6.3") ) then
    load("networkx/2.6.3")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

if not ( isloaded("UCX-CUDA/1.11.2-CUDA-11.4.1") ) then
    load("UCX-CUDA/1.11.2-CUDA-11.4.1")
end

prepend_path("CMAKE_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib64/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGROMACS", root)
setenv("EBVERSIONGROMACS", "2021.5")
setenv("EBDEVELGROMACS", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-GROMACS-2021.5-CUDA-11.4.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
setenv("EBEXTSLISTGROMACS", "gmxapi-0.2.2.1")
