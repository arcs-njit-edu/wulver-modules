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

local root = "/apps/easybuild/software/Blosc2/2.8.0-GCCcore-12.2.0"

conflict("Blosc2")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTBLOSC2", root)
setenv("EBVERSIONBLOSC2", "2.8.0")
setenv("EBDEVELBLOSC2", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Blosc2-2.8.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
