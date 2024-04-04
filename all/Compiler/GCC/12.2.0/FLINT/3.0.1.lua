help([==[

Description
===========
FLINT (Fast Library for Number Theory) is a C library in support of computations
 in number theory. Operations that can be performed include conversions, arithmetic, computing GCDs,
 factoring, solving linear systems, and evaluating special functions. In addition, FLINT provides
 various low-level routines for fast arithmetic. FLINT is extensively documented and tested.


More information
================
 - Homepage: https://www.flintlib.org/
]==])

whatis([==[Description: FLINT (Fast Library for Number Theory) is a C library in support of computations
 in number theory. Operations that can be performed include conversions, arithmetic, computing GCDs,
 factoring, solving linear systems, and evaluating special functions. In addition, FLINT provides
 various low-level routines for fast arithmetic. FLINT is extensively documented and tested.]==])
whatis([==[Homepage: https://www.flintlib.org/]==])
whatis([==[URL: https://www.flintlib.org/]==])

local root = "/apps/easybuild/software/FLINT/3.0.1-gfbf-2022b"

conflict("FLINT")

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

if not ( isloaded("NTL/11.5.1") ) then
    load("NTL/11.5.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTFLINT", root)
setenv("EBVERSIONFLINT", "3.0.1")
setenv("EBDEVELFLINT", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-FLINT-3.0.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
