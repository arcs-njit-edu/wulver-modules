help([==[

Description
===========
LERC is an open-source image or raster format which supports rapid encoding and decoding
for any pixel type (not just RGB or Byte). Users set the maximum compression error per pixel while encoding,
so the precision of the original input image is preserved (within user defined error bounds).


More information
================
 - Homepage: https://github.com/Esri/lerc
]==])

whatis([==[Description: LERC is an open-source image or raster format which supports rapid encoding and decoding
for any pixel type (not just RGB or Byte). Users set the maximum compression error per pixel while encoding,
so the precision of the original input image is preserved (within user defined error bounds).]==])
whatis([==[Homepage: https://github.com/Esri/lerc]==])
whatis([==[URL: https://github.com/Esri/lerc]==])

local root = "/apps/easybuild/software/LERC/4.0.0-GCCcore-12.2.0"

conflict("LERC")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLERC", root)
setenv("EBVERSIONLERC", "4.0.0")
setenv("EBDEVELLERC", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-LERC-4.0.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
