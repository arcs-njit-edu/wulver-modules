help([==[

Description
===========
NTL is a high-performance, portable C++ library providing data structures and
algorithms for manipulating signed, arbitrary length integers, and for vectors,
matrices, and polynomials over the integers and over finite fields.


More information
================
 - Homepage: https://shoup.net/ntl/
]==])

whatis([==[Description: NTL is a high-performance, portable C++ library providing data structures and
algorithms for manipulating signed, arbitrary length integers, and for vectors,
matrices, and polynomials over the integers and over finite fields.]==])
whatis([==[Homepage: https://shoup.net/ntl/]==])
whatis([==[URL: https://shoup.net/ntl/]==])

local root = "/apps/easybuild/software/NTL/11.5.1-GCC-12.2.0"

conflict("NTL")

if not ( isloaded("GMP/6.2.1") ) then
    load("GMP/6.2.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNTL", root)
setenv("EBVERSIONNTL", "11.5.1")
setenv("EBDEVELNTL", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-NTL-11.5.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
