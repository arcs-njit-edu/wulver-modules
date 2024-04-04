help([==[

Description
===========
ScaFaCoS is a library of scalable fast coulomb solvers.


More information
================
 - Homepage: http://www.scafacos.de/
]==])

whatis([==[Description: ScaFaCoS is a library of scalable fast coulomb solvers.]==])
whatis([==[Homepage: http://www.scafacos.de/]==])
whatis([==[URL: http://www.scafacos.de/]==])

local root = "/apps/easybuild/software/ScaFaCoS/1.0.1-foss-2021b"

conflict("ScaFaCoS")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("GMP/6.2.1") ) then
    load("GMP/6.2.1")
end

if not ( isloaded("GSL/2.7") ) then
    load("GSL/2.7")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSCAFACOS", root)
setenv("EBVERSIONSCAFACOS", "1.0.1")
setenv("EBDEVELSCAFACOS", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-ScaFaCoS-1.0.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
