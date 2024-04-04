help([==[

Description
===========
The Gdk Pixbuf is a toolkit for image loading and pixel buffer manipulation.
 It is used by GTK+ 2 and GTK+ 3 to load and manipulate images. In the past it
 was distributed as part of GTK+ 2 but it was split off into a separate package
 in preparation for the change to GTK+ 3.


More information
================
 - Homepage: https://docs.gtk.org/gdk-pixbuf/
]==])

whatis([==[Description: 
 The Gdk Pixbuf is a toolkit for image loading and pixel buffer manipulation.
 It is used by GTK+ 2 and GTK+ 3 to load and manipulate images. In the past it
 was distributed as part of GTK+ 2 but it was split off into a separate package
 in preparation for the change to GTK+ 3.
]==])
whatis([==[Homepage: https://docs.gtk.org/gdk-pixbuf/]==])
whatis([==[URL: https://docs.gtk.org/gdk-pixbuf/]==])

local root = "/apps/easybuild/software/Gdk-Pixbuf/2.42.10-GCCcore-12.2.0"

conflict("Gdk-Pixbuf")

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

if not ( isloaded("libjpeg-turbo/2.1.4") ) then
    load("libjpeg-turbo/2.1.4")
end

if not ( isloaded("libpng/1.6.38") ) then
    load("libpng/1.6.38")
end

if not ( isloaded("LibTIFF/4.4.0") ) then
    load("LibTIFF/4.4.0")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGDKMINPIXBUF", root)
setenv("EBVERSIONGDKMINPIXBUF", "2.42.10")
setenv("EBDEVELGDKMINPIXBUF", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Gdk-Pixbuf-2.42.10-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
