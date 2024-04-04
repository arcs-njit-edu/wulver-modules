help([==[

Description
===========
Snappy is a compression/decompression library. It does not aim
for maximum compression, or compatibility with any other compression library;
instead, it aims for very high speeds and reasonable compression.


More information
================
 - Homepage: https://github.com/google/snappy
]==])

whatis([==[Description: Snappy is a compression/decompression library. It does not aim
for maximum compression, or compatibility with any other compression library;
instead, it aims for very high speeds and reasonable compression.]==])
whatis([==[Homepage: https://github.com/google/snappy]==])
whatis([==[URL: https://github.com/google/snappy]==])

local root = "/apps/easybuild/software/snappy/1.1.9-GCCcore-11.2.0"

conflict("snappy")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTSNAPPY", root)
setenv("EBVERSIONSNAPPY", "1.1.9")
setenv("EBDEVELSNAPPY", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-snappy-1.1.9-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
