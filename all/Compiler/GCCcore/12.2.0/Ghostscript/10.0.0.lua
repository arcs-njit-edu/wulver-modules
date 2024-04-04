help([==[

Description
===========
Ghostscript is a versatile processor for PostScript data with the ability to render PostScript to
 different targets. It used to be part of the cups printing stack, but is no longer used for that.


More information
================
 - Homepage: https://ghostscript.com
]==])

whatis([==[Description: Ghostscript is a versatile processor for PostScript data with the ability to render PostScript to
 different targets. It used to be part of the cups printing stack, but is no longer used for that.]==])
whatis([==[Homepage: https://ghostscript.com]==])
whatis([==[URL: https://ghostscript.com]==])

local root = "/apps/easybuild/software/Ghostscript/10.0.0-GCCcore-12.2.0"

conflict("Ghostscript")

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

if not ( isloaded("libpng/1.6.38") ) then
    load("libpng/1.6.38")
end

if not ( isloaded("freetype/2.12.1") ) then
    load("freetype/2.12.1")
end

if not ( isloaded("libjpeg-turbo/2.1.4") ) then
    load("libjpeg-turbo/2.1.4")
end

if not ( isloaded("expat/2.4.9") ) then
    load("expat/2.4.9")
end

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

if not ( isloaded("cairo/1.17.4") ) then
    load("cairo/1.17.4")
end

if not ( isloaded("LibTIFF/4.4.0") ) then
    load("LibTIFF/4.4.0")
end

if not ( isloaded("GTK3/3.24.35") ) then
    load("GTK3/3.24.35")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGHOSTSCRIPT", root)
setenv("EBVERSIONGHOSTSCRIPT", "10.0.0")
setenv("EBDEVELGHOSTSCRIPT", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Ghostscript-10.0.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
