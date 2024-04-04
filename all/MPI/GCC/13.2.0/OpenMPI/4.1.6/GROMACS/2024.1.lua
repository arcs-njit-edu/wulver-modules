help([==[

Description
===========
GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the
Newtonian equations of motion for systems with hundreds to millions of
particles.

This is a CPU only build, containing both MPI and threadMPI binaries
for both single and double precision.

It also contains the gmxapi extension for the single precision MPI build.


More information
================
 - Homepage: https://www.gromacs.org


Included extensions
===================
gmxapi-0.4.2
]==])

whatis([==[Description: 
GROMACS is a versatile package to perform molecular dynamics, i.e. simulate the
Newtonian equations of motion for systems with hundreds to millions of
particles.

This is a CPU only build, containing both MPI and threadMPI binaries
for both single and double precision.

It also contains the gmxapi extension for the single precision MPI build.
]==])
whatis([==[Homepage: https://www.gromacs.org]==])
whatis([==[URL: https://www.gromacs.org]==])
whatis([==[Extensions: gmxapi-0.4.2]==])

local root = "/apps/easybuild/software/GROMACS/2024.1-foss-2023b"

conflict("GROMACS")

if not ( isloaded("FlexiBLAS/3.3.1") ) then
    load("FlexiBLAS/3.3.1")
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

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

if not ( isloaded("SciPy-bundle/2023.11") ) then
    load("SciPy-bundle/2023.11")
end

if not ( isloaded("networkx/3.2.1") ) then
    load("networkx/3.2.1")
end

if not ( isloaded("mpi4py/3.1.5") ) then
    load("mpi4py/3.1.5")
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
setenv("EBVERSIONGROMACS", "2024.1")
setenv("EBDEVELGROMACS", pathJoin(root, "easybuild/MPI-GCC-13.2.0-OpenMPI-4.1.6-GROMACS-2024.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTGROMACS", "gmxapi-0.4.2")
