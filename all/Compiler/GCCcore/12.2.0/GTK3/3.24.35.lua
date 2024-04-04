help([==[

Description
===========
GTK+ is the primary library used to construct user interfaces in GNOME. It
 provides all the user interface controls, or widgets, used in a common
 graphical application. Its object-oriented API allows you to construct
 user interfaces without dealing with the low-level details of drawing and
 device interaction.


More information
================
 - Homepage: https://developer.gnome.org/gtk3/stable/
]==])

whatis([==[Description: GTK+ is the primary library used to construct user interfaces in GNOME. It
 provides all the user interface controls, or widgets, used in a common
 graphical application. Its object-oriented API allows you to construct
 user interfaces without dealing with the low-level details of drawing and
 device interaction.
]==])
whatis([==[Homepage: https://developer.gnome.org/gtk3/stable/]==])
whatis([==[URL: https://developer.gnome.org/gtk3/stable/]==])

local root = "/apps/easybuild/software/GTK3/3.24.35-GCCcore-12.2.0"

conflict("GTK3")

if not ( isloaded("ATK/2.38.0") ) then
    load("ATK/2.38.0")
end

if not ( isloaded("at-spi2-atk/2.38.0") ) then
    load("at-spi2-atk/2.38.0")
end

if not ( isloaded("Gdk-Pixbuf/2.42.10") ) then
    load("Gdk-Pixbuf/2.42.10")
end

if not ( isloaded("Pango/1.50.12") ) then
    load("Pango/1.50.12")
end

if not ( isloaded("libepoxy/1.5.10") ) then
    load("libepoxy/1.5.10")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("FriBidi/1.0.12") ) then
    load("FriBidi/1.0.12")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGTK3", root)
setenv("EBVERSIONGTK3", "3.24.35")
setenv("EBDEVELGTK3", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-GTK3-3.24.35-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
