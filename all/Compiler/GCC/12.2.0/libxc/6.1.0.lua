help([==[

Description
===========
Libxc is a library of exchange-correlation functionals for density-functional theory.
 The aim is to provide a portable, well tested and reliable set of exchange and correlation functionals.


More information
================
 - Homepage: https://libxc.gitlab.io
]==])

whatis([==[Description: Libxc is a library of exchange-correlation functionals for density-functional theory.
 The aim is to provide a portable, well tested and reliable set of exchange and correlation functionals.]==])
whatis([==[Homepage: https://libxc.gitlab.io]==])
whatis([==[URL: https://libxc.gitlab.io]==])

local root = "/apps/easybuild/software/libxc/6.1.0-GCC-12.2.0"

conflict("libxc")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBXC", root)
setenv("EBVERSIONLIBXC", "6.1.0")
setenv("EBDEVELLIBXC", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-libxc-6.1.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
