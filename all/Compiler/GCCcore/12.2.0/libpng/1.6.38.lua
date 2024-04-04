help([==[

Description
===========
libpng is the official PNG reference library


More information
================
 - Homepage: http://www.libpng.org/pub/png/libpng.html
]==])

whatis([==[Description: libpng is the official PNG reference library]==])
whatis([==[Homepage: http://www.libpng.org/pub/png/libpng.html]==])
whatis([==[URL: http://www.libpng.org/pub/png/libpng.html]==])

local root = "/apps/easybuild/software/libpng/1.6.38-GCCcore-12.2.0"

conflict("libpng")

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBPNG", root)
setenv("EBVERSIONLIBPNG", "1.6.38")
setenv("EBDEVELLIBPNG", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-libpng-1.6.38-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
