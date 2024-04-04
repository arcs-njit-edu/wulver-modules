help([==[

Description
===========
Blosc, an extremely fast, multi-threaded, meta-compressor library


More information
================
 - Homepage: https://www.blosc.org/
]==])

whatis([==[Description: Blosc, an extremely fast, multi-threaded, meta-compressor library]==])
whatis([==[Homepage: https://www.blosc.org/]==])
whatis([==[URL: https://www.blosc.org/]==])

local root = "/apps/easybuild/software/Blosc/1.21.3-GCCcore-12.2.0"

conflict("Blosc")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTBLOSC", root)
setenv("EBVERSIONBLOSC", "1.21.3")
setenv("EBDEVELBLOSC", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Blosc-1.21.3-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
