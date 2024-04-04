help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain, including
 FlexiBLAS (BLAS and LAPACK support) and (serial) FFTW.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain, including
 FlexiBLAS (BLAS and LAPACK support) and (serial) FFTW.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/apps/easybuild/software/gfbf/2022b"

conflict("gfbf")

if not ( isloaded("GCC/12.2.0") ) then
    load("GCC/12.2.0")
end

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

setenv("EBROOTGFBF", root)
setenv("EBVERSIONGFBF", "2022b")
setenv("EBDEVELGFBF", pathJoin(root, "easybuild/Core-gfbf-2022b-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
