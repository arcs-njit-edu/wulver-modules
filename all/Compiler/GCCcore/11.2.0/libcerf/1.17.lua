help([==[

Description
===========
libcerf is a self-contained numeric library that provides an efficient and
 accurate implementation of complex error functions, along with Dawson,
 Faddeeva, and Voigt functions.


More information
================
 - Homepage: https://jugit.fz-juelich.de/mlz/libcerf
]==])

whatis([==[Description: 
 libcerf is a self-contained numeric library that provides an efficient and
 accurate implementation of complex error functions, along with Dawson,
 Faddeeva, and Voigt functions.
]==])
whatis([==[Homepage: https://jugit.fz-juelich.de/mlz/libcerf]==])
whatis([==[URL: https://jugit.fz-juelich.de/mlz/libcerf]==])

local root = "/apps/easybuild/software/libcerf/1.17-GCCcore-11.2.0"

conflict("libcerf")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBCERF", root)
setenv("EBVERSIONLIBCERF", "1.17")
setenv("EBDEVELLIBCERF", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-libcerf-1.17-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
