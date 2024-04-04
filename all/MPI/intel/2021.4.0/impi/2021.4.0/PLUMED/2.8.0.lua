help([==[

Description
===========
PLUMED is an open source library for free energy calculations in molecular systems which
 works together with some of the most popular molecular dynamics engines. Free energy calculations can be
 performed as a function of many order parameters with a particular  focus on biological problems, using
 state of the art methods such as metadynamics, umbrella sampling and Jarzynski-equation based steered MD.
 The software, written in C++, can be easily interfaced with both fortran and C/C++ codes.


More information
================
 - Homepage: https://www.plumed.org
]==])

whatis([==[Description: PLUMED is an open source library for free energy calculations in molecular systems which
 works together with some of the most popular molecular dynamics engines. Free energy calculations can be
 performed as a function of many order parameters with a particular  focus on biological problems, using
 state of the art methods such as metadynamics, umbrella sampling and Jarzynski-equation based steered MD.
 The software, written in C++, can be easily interfaced with both fortran and C/C++ codes.
]==])
whatis([==[Homepage: https://www.plumed.org]==])
whatis([==[URL: https://www.plumed.org]==])

local root = "/apps/easybuild/software/PLUMED/2.8.0-intel-2021b"

conflict("PLUMED")

if not ( isloaded("imkl/2021.4.0") ) then
    load("imkl/2021.4.0")
end

if not ( isloaded("imkl-FFTW/2021.4.0") ) then
    load("imkl-FFTW/2021.4.0")
end

if not ( isloaded("GSL/2.7") ) then
    load("GSL/2.7")
end

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

if not ( isloaded("SciPy-bundle/2021.10") ) then
    load("SciPy-bundle/2021.10")
end

if not ( isloaded("Boost/1.77.0") ) then
    load("Boost/1.77.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPLUMED", root)
setenv("EBVERSIONPLUMED", "2.8.0")
setenv("EBDEVELPLUMED", pathJoin(root, "easybuild/MPI-intel-2021.4.0-impi-2021.4.0-PLUMED-2.8.0-easybuild-devel"))

prepend_path("PLUMED_KERNEL", pathJoin(root, "lib/libplumedKernel.so"))
prepend_path("PLUMED_ROOT", pathJoin(root, "lib/plumed"))
prepend_path("PYTHONPATH", pathJoin(root, "lib/plumed/python"))
-- Built with EasyBuild version 4.7.1