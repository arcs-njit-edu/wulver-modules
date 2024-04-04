help([==[

Description
===========
OpenFOAM is a free, open source CFD software package.
 OpenFOAM has an extensive range of features to solve anything from complex fluid flows
 involving chemical reactions, turbulence and heat transfer,
 to solid dynamics and electromagnetics.


More information
================
 - Homepage: https://www.openfoam.com/
]==])

whatis([==[Description: OpenFOAM is a free, open source CFD software package.
 OpenFOAM has an extensive range of features to solve anything from complex fluid flows
 involving chemical reactions, turbulence and heat transfer,
 to solid dynamics and electromagnetics.]==])
whatis([==[Homepage: https://www.openfoam.com/]==])
whatis([==[URL: https://www.openfoam.com/]==])

local root = "/apps/easybuild/software/OpenFOAM/v2112-foss-2021b"

conflict("OpenFOAM")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("libreadline/8.1") ) then
    load("libreadline/8.1")
end

if not ( isloaded("ncurses/6.2") ) then
    load("ncurses/6.2")
end

if not ( isloaded("METIS/5.1.0") ) then
    load("METIS/5.1.0")
end

if not ( isloaded("SCOTCH/6.1.2") ) then
    load("SCOTCH/6.1.2")
end

if not ( isloaded("CGAL/4.14.3") ) then
    load("CGAL/4.14.3")
end

if not ( isloaded("ParaView/5.9.1-mpi") ) then
    load("ParaView/5.9.1-mpi")
end

if not ( isloaded("gnuplot/5.4.2") ) then
    load("gnuplot/5.4.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTOPENFOAM", root)
setenv("EBVERSIONOPENFOAM", "v2112")
setenv("EBDEVELOPENFOAM", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-OpenFOAM-v2112-easybuild-devel"))

setenv("WM_COMPILE_OPTION", "Opt")
setenv("WM_PROJECT_VERSION", "v2112")
setenv("FOAM_INST_DIR", "/apps/easybuild/software/OpenFOAM/v2112-foss-2021b")
setenv("WM_COMPILER", "Gcc")
setenv("WM_MPLIB", "EASYBUILDMPI")
setenv("FOAM_BASH", "/apps/easybuild/software/OpenFOAM/v2112-foss-2021b/OpenFOAM-v2112/etc/bashrc")
setenv("FOAM_CSH", "/apps/easybuild/software/OpenFOAM/v2112-foss-2021b/OpenFOAM-v2112/etc/cshrc")
setenv("WM_LABEL_SIZE", "32")
-- Built with EasyBuild version 4.7.1
