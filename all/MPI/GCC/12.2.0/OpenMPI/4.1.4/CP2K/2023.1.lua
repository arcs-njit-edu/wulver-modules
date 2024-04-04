help([==[

Description
===========
CP2K is a freely available (GPL) program, written in Fortran 95, to perform atomistic and molecular
 simulations of solid state, liquid, molecular and biological systems. It provides a general framework for different
 methods such as e.g. density functional theory (DFT) using a mixed Gaussian and plane waves approach (GPW), and
 classical pair and many-body potentials.


More information
================
 - Homepage: https://www.cp2k.org/
]==])

whatis([==[Description: CP2K is a freely available (GPL) program, written in Fortran 95, to perform atomistic and molecular
 simulations of solid state, liquid, molecular and biological systems. It provides a general framework for different
 methods such as e.g. density functional theory (DFT) using a mixed Gaussian and plane waves approach (GPW), and
 classical pair and many-body potentials. ]==])
whatis([==[Homepage: https://www.cp2k.org/]==])
whatis([==[URL: https://www.cp2k.org/]==])

local root = "/apps/easybuild/software/CP2K/2023.1-foss-2022b"

conflict("CP2K")

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

if not ( isloaded("Libint/2.7.2-lmax-6-cp2k") ) then
    load("Libint/2.7.2-lmax-6-cp2k")
end

if not ( isloaded("libxc/6.1.0") ) then
    load("libxc/6.1.0")
end

if not ( isloaded("libxsmm/1.17") ) then
    load("libxsmm/1.17")
end

if not ( isloaded("libvori/220621") ) then
    load("libvori/220621")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("PLUMED/2.9.0") ) then
    load("PLUMED/2.9.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCP2K", root)
setenv("EBVERSIONCP2K", "2023.1")
setenv("EBDEVELCP2K", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-CP2K-2023.1-easybuild-devel"))

setenv("CP2K_DATA_DIR", "/apps/easybuild/software/CP2K/2023.1-foss-2022b/data")
-- Built with EasyBuild version 4.9.0
