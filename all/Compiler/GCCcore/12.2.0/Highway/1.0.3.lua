help([==[

Description
===========
Highway is a C++ library for SIMD (Single Instruction, Multiple Data), i.e. applying the same
operation to 'lanes'.


More information
================
 - Homepage: https://github.com/google/highway
]==])

whatis([==[Description: Highway is a C++ library for SIMD (Single Instruction, Multiple Data), i.e. applying the same
operation to 'lanes'.]==])
whatis([==[Homepage: https://github.com/google/highway]==])
whatis([==[URL: https://github.com/google/highway]==])

local root = "/apps/easybuild/software/Highway/1.0.3-GCCcore-12.2.0"

conflict("Highway")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTHIGHWAY", root)
setenv("EBVERSIONHIGHWAY", "1.0.3")
setenv("EBDEVELHIGHWAY", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Highway-1.0.3-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
