help([==[

Description
===========
FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
in one or more dimensions, of arbitrary input size, and of both real and complex data.


More information
================
 - Homepage: https://www.fftw.org
]==])

whatis([==[Description: FFTW is a C subroutine library for computing the discrete Fourier transform (DFT)
in one or more dimensions, of arbitrary input size, and of both real and complex data.]==])
whatis([==[Homepage: https://www.fftw.org]==])
whatis([==[URL: https://www.fftw.org]==])

local root = "/apps/easybuild/software/FFTW.MPI/3.3.10-gompi-2023b"

conflict("FFTW.MPI")

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTFFTWMPI", root)
setenv("EBVERSIONFFTWMPI", "3.3.10")
setenv("EBDEVELFFTWMPI", pathJoin(root, "easybuild/MPI-GCC-13.2.0-OpenMPI-4.1.6-FFTW.MPI-3.3.10-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
