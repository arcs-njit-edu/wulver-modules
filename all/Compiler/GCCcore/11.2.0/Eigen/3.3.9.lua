help([==[

Description
===========
Eigen is a C++ template library for linear algebra: matrices, vectors, numerical solvers,
 and related algorithms.


More information
================
 - Homepage: https://eigen.tuxfamily.org
]==])

whatis([==[Description: Eigen is a C++ template library for linear algebra: matrices, vectors, numerical solvers,
 and related algorithms.]==])
whatis([==[Homepage: https://eigen.tuxfamily.org]==])
whatis([==[URL: https://eigen.tuxfamily.org]==])

local root = "/apps/easybuild/software/Eigen/3.3.9-GCCcore-11.2.0"

conflict("Eigen")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(root, "include"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTEIGEN", root)
setenv("EBVERSIONEIGEN", "3.3.9")
setenv("EBDEVELEIGEN", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-Eigen-3.3.9-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
