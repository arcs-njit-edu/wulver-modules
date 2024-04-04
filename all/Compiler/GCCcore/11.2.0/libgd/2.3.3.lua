help([==[

Description
===========
GD is an open source code library for the dynamic creation of images by programmers.


More information
================
 - Homepage: https://libgd.github.io
]==])

whatis([==[Description: GD is an open source code library for the dynamic creation of images by programmers.]==])
whatis([==[Homepage: https://libgd.github.io]==])
whatis([==[URL: https://libgd.github.io]==])

local root = "/apps/easybuild/software/libgd/2.3.3-GCCcore-11.2.0"

conflict("libgd")

if not ( isloaded("fontconfig/2.13.94") ) then
    load("fontconfig/2.13.94")
end

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGD", root)
setenv("EBVERSIONLIBGD", "2.3.3")
setenv("EBDEVELLIBGD", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-libgd-2.3.3-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
