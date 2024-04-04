help([==[

Description
===========
Arb is a C library for arbitrary-precision interval arithmetic.
 It has full support for both real and complex numbers. The library is thread-safe,
 portable, and extensively tested.


More information
================
 - Homepage: https://arblib.org/
]==])

whatis([==[Description: Arb is a C library for arbitrary-precision interval arithmetic.
 It has full support for both real and complex numbers. The library is thread-safe,
 portable, and extensively tested.]==])
whatis([==[Homepage: https://arblib.org/]==])
whatis([==[URL: https://arblib.org/]==])

local root = "/apps/easybuild/software/Arb/2.23.0-gfbf-2022b"

conflict("Arb")

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("GMP/6.2.1") ) then
    load("GMP/6.2.1")
end

if not ( isloaded("MPFR/4.2.0") ) then
    load("MPFR/4.2.0")
end

if not ( isloaded("FLINT/2.9.0") ) then
    load("FLINT/2.9.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTARB", root)
setenv("EBVERSIONARB", "2.23.0")
setenv("EBDEVELARB", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-Arb-2.23.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
