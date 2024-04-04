help([==[

Description
===========
Brunsli is a lossless JPEG repacking library.


More information
================
 - Homepage: https://github.com/google/brunsli/
]==])

whatis([==[Description: Brunsli is a lossless JPEG repacking library.]==])
whatis([==[Homepage: https://github.com/google/brunsli/]==])
whatis([==[URL: https://github.com/google/brunsli/]==])

local root = "/apps/easybuild/software/Brunsli/0.1-GCCcore-12.2.0"

conflict("Brunsli")

if not ( isloaded("Brotli/1.0.9") ) then
    load("Brotli/1.0.9")
end

if not ( isloaded("Highway/1.0.3") ) then
    load("Highway/1.0.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTBRUNSLI", root)
setenv("EBVERSIONBRUNSLI", "0.1")
setenv("EBDEVELBRUNSLI", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Brunsli-0.1-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
