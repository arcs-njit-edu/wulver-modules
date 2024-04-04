help([==[

Description
===========
Epoxy is a library for handling OpenGL function pointer management for you


More information
================
 - Homepage: https://github.com/anholt/libepoxy
]==])

whatis([==[Description: Epoxy is a library for handling OpenGL function pointer management for you]==])
whatis([==[Homepage: https://github.com/anholt/libepoxy]==])
whatis([==[URL: https://github.com/anholt/libepoxy]==])

local root = "/apps/easybuild/software/libepoxy/1.5.10-GCCcore-12.2.0"

conflict("libepoxy")

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("Mesa/22.2.4") ) then
    load("Mesa/22.2.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBEPOXY", root)
setenv("EBVERSIONLIBEPOXY", "1.5.10")
setenv("EBDEVELLIBEPOXY", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-libepoxy-1.5.10-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
