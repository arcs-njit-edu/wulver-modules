help([==[

Description
===========
Libint library is used to evaluate the traditional (electron repulsion) and certain novel two-body
 matrix elements (integrals) over Cartesian Gaussian functions used in modern atomic and molecular theory.


More information
================
 - Homepage: https://github.com/evaleev/libint
]==])

whatis([==[Description: Libint library is used to evaluate the traditional (electron repulsion) and certain novel two-body
 matrix elements (integrals) over Cartesian Gaussian functions used in modern atomic and molecular theory.]==])
whatis([==[Homepage: https://github.com/evaleev/libint]==])
whatis([==[URL: https://github.com/evaleev/libint]==])

local root = "/apps/easybuild/software/Libint/2.7.2-GCC-12.2.0-lmax-6-cp2k"

conflict("Libint")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPATH", pathJoin(root, "include/libint2"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBINT", root)
setenv("EBVERSIONLIBINT", "2.7.2")
setenv("EBDEVELLIBINT", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-Libint-2.7.2-lmax-6-cp2k-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
