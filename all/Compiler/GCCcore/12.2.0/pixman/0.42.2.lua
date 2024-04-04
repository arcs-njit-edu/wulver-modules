help([==[

Description
===========
Pixman is a low-level software library for pixel manipulation, providing
 features such as image compositing and trapezoid rasterization. Important
 users of pixman are the cairo graphics library and the X server.


More information
================
 - Homepage: http://www.pixman.org/
]==])

whatis([==[Description: 
 Pixman is a low-level software library for pixel manipulation, providing
 features such as image compositing and trapezoid rasterization. Important
 users of pixman are the cairo graphics library and the X server.
]==])
whatis([==[Homepage: http://www.pixman.org/]==])
whatis([==[URL: http://www.pixman.org/]==])

local root = "/apps/easybuild/software/pixman/0.42.2-GCCcore-12.2.0"

conflict("pixman")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTPIXMAN", root)
setenv("EBVERSIONPIXMAN", "0.42.2")
setenv("EBDEVELPIXMAN", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-pixman-0.42.2-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
