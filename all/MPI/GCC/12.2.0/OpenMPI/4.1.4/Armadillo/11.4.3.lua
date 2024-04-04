help([==[

Description
===========
Armadillo is an open-source C++ linear algebra library (matrix maths) aiming towards
 a good balance between speed and ease of use. Integer, floating point and complex numbers are supported,
 as well as a subset of trigonometric and statistics functions.


More information
================
 - Homepage: https://arma.sourceforge.net/
]==])

whatis([==[Description: Armadillo is an open-source C++ linear algebra library (matrix maths) aiming towards
 a good balance between speed and ease of use. Integer, floating point and complex numbers are supported,
 as well as a subset of trigonometric and statistics functions.]==])
whatis([==[Homepage: https://arma.sourceforge.net/]==])
whatis([==[URL: https://arma.sourceforge.net/]==])

local root = "/apps/easybuild/software/Armadillo/11.4.3-foss-2022b"

conflict("Armadillo")

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

if not ( isloaded("Boost/1.81.0") ) then
    load("Boost/1.81.0")
end

if not ( isloaded("arpack-ng/3.8.0") ) then
    load("arpack-ng/3.8.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARMADILLO", root)
setenv("EBVERSIONARMADILLO", "11.4.3")
setenv("EBDEVELARMADILLO", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-Armadillo-11.4.3-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
