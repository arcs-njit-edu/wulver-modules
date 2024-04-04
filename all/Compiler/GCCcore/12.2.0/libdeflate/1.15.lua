help([==[

Description
===========
Heavily optimized library for DEFLATE/zlib/gzip compression and decompression.


More information
================
 - Homepage: https://github.com/ebiggers/libdeflate
]==])

whatis([==[Description: Heavily optimized library for DEFLATE/zlib/gzip compression and decompression.]==])
whatis([==[Homepage: https://github.com/ebiggers/libdeflate]==])
whatis([==[URL: https://github.com/ebiggers/libdeflate]==])

local root = "/apps/easybuild/software/libdeflate/1.15-GCCcore-12.2.0"

conflict("libdeflate")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBDEFLATE", root)
setenv("EBVERSIONLIBDEFLATE", "1.15")
setenv("EBDEVELLIBDEFLATE", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-libdeflate-1.15-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
