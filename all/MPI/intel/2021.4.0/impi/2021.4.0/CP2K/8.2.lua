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

local root = "/apps/easybuild/software/CP2K/8.2-intel-2021b"

conflict("CP2K")

if not ( isloaded("imkl/2021.4.0") ) then
    load("imkl/2021.4.0")
end

if not ( isloaded("imkl-FFTW/2021.4.0") ) then
    load("imkl-FFTW/2021.4.0")
end

if not ( isloaded("Libint/2.7.2-lmax-6-cp2k") ) then
    load("Libint/2.7.2-lmax-6-cp2k")
end

if not ( isloaded("libxc/5.1.6") ) then
    load("libxc/5.1.6")
end

if not ( isloaded("libxsmm/1.17") ) then
    load("libxsmm/1.17")
end

if not ( isloaded("PLUMED/2.8.0") ) then
    load("PLUMED/2.8.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCP2K", root)
setenv("EBVERSIONCP2K", "8.2")
setenv("EBDEVELCP2K", pathJoin(root, "easybuild/MPI-intel-2021.4.0-impi-2021.4.0-CP2K-8.2-easybuild-devel"))

setenv("CP2K_DATA_DIR", "/apps/easybuild/software/CP2K/8.2-intel-2021b/data")
-- Built with EasyBuild version 4.7.1
