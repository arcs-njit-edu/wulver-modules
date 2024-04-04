help([==[

Description
===========
Pango is a library for laying out and rendering of text, with an emphasis on internationalization.
Pango can be used anywhere that text layout is needed, though most of the work on Pango so far has been done in the
context of the GTK+ widget toolkit. Pango forms the core of text and font handling for GTK+-2.x.


More information
================
 - Homepage: https://www.pango.org/
]==])

whatis([==[Description: Pango is a library for laying out and rendering of text, with an emphasis on internationalization.
Pango can be used anywhere that text layout is needed, though most of the work on Pango so far has been done in the
context of the GTK+ widget toolkit. Pango forms the core of text and font handling for GTK+-2.x.]==])
whatis([==[Homepage: https://www.pango.org/]==])
whatis([==[URL: https://www.pango.org/]==])

local root = "/apps/easybuild/software/Pango/1.50.12-GCCcore-12.2.0"

conflict("Pango")

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

if not ( isloaded("cairo/1.17.4") ) then
    load("cairo/1.17.4")
end

if not ( isloaded("HarfBuzz/5.3.1") ) then
    load("HarfBuzz/5.3.1")
end

if not ( isloaded("FriBidi/1.0.12") ) then
    load("FriBidi/1.0.12")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPANGO", root)
setenv("EBVERSIONPANGO", "1.50.12")
setenv("EBDEVELPANGO", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Pango-1.50.12-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
