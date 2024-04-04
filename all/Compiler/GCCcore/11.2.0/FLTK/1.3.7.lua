help([==[

Description
===========
FLTK is a cross-platform C++ GUI toolkit for UNIX/Linux (X11), Microsoft Windows,
 and MacOS X. FLTK provides modern GUI functionality without the bloat and supports 3D graphics via OpenGL
 and its built-in GLUT emulation.


More information
================
 - Homepage: https://www.fltk.org
]==])

whatis([==[Description: FLTK is a cross-platform C++ GUI toolkit for UNIX/Linux (X11), Microsoft Windows,
 and MacOS X. FLTK provides modern GUI functionality without the bloat and supports 3D graphics via OpenGL
 and its built-in GLUT emulation.]==])
whatis([==[Homepage: https://www.fltk.org]==])
whatis([==[URL: https://www.fltk.org]==])

local root = "/apps/easybuild/software/FLTK/1.3.7-GCCcore-11.2.0"

conflict("FLTK")

if not ( isloaded("Mesa/21.1.7") ) then
    load("Mesa/21.1.7")
end

if not ( isloaded("libGLU/9.0.2") ) then
    load("libGLU/9.0.2")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("xprop/1.2.5") ) then
    load("xprop/1.2.5")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFLTK", root)
setenv("EBVERSIONFLTK", "1.3.7")
setenv("EBDEVELFLTK", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-FLTK-1.3.7-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
