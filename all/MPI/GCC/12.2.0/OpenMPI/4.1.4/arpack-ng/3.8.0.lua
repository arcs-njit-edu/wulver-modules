help([==[

Description
===========
ARPACK is a collection of Fortran77 subroutines designed to solve large scale eigenvalue problems.


More information
================
 - Homepage: https://github.com/opencollab/arpack-ng
]==])

whatis([==[Description: ARPACK is a collection of Fortran77 subroutines designed to solve large scale eigenvalue problems.]==])
whatis([==[Homepage: https://github.com/opencollab/arpack-ng]==])
whatis([==[URL: https://github.com/opencollab/arpack-ng]==])

local root = "/apps/easybuild/software/arpack-ng/3.8.0-foss-2022b"

conflict("arpack-ng")

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

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTARPACKMINNG", root)
setenv("EBVERSIONARPACKMINNG", "3.8.0")
setenv("EBDEVELARPACKMINNG", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-arpack-ng-3.8.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
