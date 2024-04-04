help([==[

Description
===========
The OpenGL Utility Library (GLU) is a computer graphics library for OpenGL.


More information
================
 - Homepage: https://mesa.freedesktop.org/archive/glu/
]==])

whatis([==[Description: The OpenGL Utility Library (GLU) is a computer graphics library for OpenGL. ]==])
whatis([==[Homepage: https://mesa.freedesktop.org/archive/glu/]==])
whatis([==[URL: https://mesa.freedesktop.org/archive/glu/]==])

local root = "/apps/easybuild/software/libGLU/9.0.2-GCCcore-12.2.0"

conflict("libGLU")

if not ( isloaded("Mesa/22.2.4") ) then
    load("Mesa/22.2.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGLU", root)
setenv("EBVERSIONLIBGLU", "9.0.2")
setenv("EBDEVELLIBGLU", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-libGLU-9.0.2-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
