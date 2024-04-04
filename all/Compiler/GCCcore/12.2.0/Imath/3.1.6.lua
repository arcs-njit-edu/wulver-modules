help([==[

Description
===========
Imath is a C++ and python library of 2D and 3D vector, matrix, and math operations for computer graphics


More information
================
 - Homepage: https://imath.readthedocs.io/en/latest/
]==])

whatis([==[Description: 
Imath is a C++ and python library of 2D and 3D vector, matrix, and math operations for computer graphics
]==])
whatis([==[Homepage: https://imath.readthedocs.io/en/latest/]==])
whatis([==[URL: https://imath.readthedocs.io/en/latest/]==])

local root = "/apps/easybuild/software/Imath/3.1.6-GCCcore-12.2.0"

conflict("Imath")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTIMATH", root)
setenv("EBVERSIONIMATH", "3.1.6")
setenv("EBDEVELIMATH", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Imath-3.1.6-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
