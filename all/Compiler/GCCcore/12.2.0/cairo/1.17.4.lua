help([==[

Description
===========
Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB


More information
================
 - Homepage: https://cairographics.org
]==])

whatis([==[Description: Cairo is a 2D graphics library with support for multiple output devices.
 Currently supported output targets include the X Window System (via both Xlib and XCB), Quartz, Win32, image buffers,
 PostScript, PDF, and SVG file output. Experimental backends include OpenGL, BeOS, OS/2, and DirectFB]==])
whatis([==[Homepage: https://cairographics.org]==])
whatis([==[URL: https://cairographics.org]==])

local root = "/apps/easybuild/software/cairo/1.17.4-GCCcore-12.2.0"

conflict("cairo")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

if not ( isloaded("libpng/1.6.38") ) then
    load("libpng/1.6.38")
end

if not ( isloaded("freetype/2.12.1") ) then
    load("freetype/2.12.1")
end

if not ( isloaded("pixman/0.42.2") ) then
    load("pixman/0.42.2")
end

if not ( isloaded("expat/2.4.9") ) then
    load("expat/2.4.9")
end

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCAIRO", root)
setenv("EBVERSIONCAIRO", "1.17.4")
setenv("EBDEVELCAIRO", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-cairo-1.17.4-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
