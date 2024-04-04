help([==[

Description
===========
GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the
Newtonian equations of motion for systems with hundreds to millions of
particles.

This is a GPU enabled build, containing both MPI and threadMPI binaries.

It also contains the gmxapi extension for the single precision MPI build.


More information
================
 - Homepage: https://www.gromacs.org


Included extensions
===================
gmxapi-0.4.0
]==])

whatis([==[Description: 
GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the
Newtonian equations of motion for systems with hundreds to millions of
particles.

This is a GPU enabled build, containing both MPI and threadMPI binaries.

It also contains the gmxapi extension for the single precision MPI build.
]==])
whatis([==[Homepage: https://www.gromacs.org]==])
whatis([==[URL: https://www.gromacs.org]==])
whatis([==[Extensions: gmxapi-0.4.0]==])

local root = "/apps/easybuild/software/GROMACS/2023.1-foss-2022b-CUDA-12.0.0"

conflict("GROMACS")

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

if not ( isloaded("CUDA/12.0.0") ) then
    load("CUDA/12.0.0")
end

if not ( isloaded("UCX-CUDA/1.13.1-CUDA-12.0.0") ) then
    load("UCX-CUDA/1.13.1-CUDA-12.0.0")
end

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("SciPy-bundle/2023.02") ) then
    load("SciPy-bundle/2023.02")
end

if not ( isloaded("networkx/2.8.8") ) then
    load("networkx/2.8.8")
end

if not ( isloaded("mpi4py/3.1.4") ) then
    load("mpi4py/3.1.4")
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
setenv("EBVERSIONGROMACS", "2023.1")
setenv("EBDEVELGROMACS", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-GROMACS-2023.1-CUDA-12.0.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
setenv("EBEXTSLISTGROMACS", "gmxapi-0.4.0")
