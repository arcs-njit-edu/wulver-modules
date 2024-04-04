help([==[

Description
===========
LIBXSMM is a library for small dense and small sparse matrix-matrix multiplications
targeting Intel Architecture (x86).


More information
================
 - Homepage: https://github.com/hfp/libxsmm
]==])

whatis([==[Description: LIBXSMM is a library for small dense and small sparse matrix-matrix multiplications
targeting Intel Architecture (x86).]==])
whatis([==[Homepage: https://github.com/hfp/libxsmm]==])
whatis([==[URL: https://github.com/hfp/libxsmm]==])

local root = "/apps/easybuild/software/libxsmm/1.17-GCC-12.2.0"

conflict("libxsmm")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBXSMM", root)
setenv("EBVERSIONLIBXSMM", "1.17")
setenv("EBDEVELLIBXSMM", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-libxsmm-1.17-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
