help([==[

Description
===========
Portable interactive, function plotting utility


More information
================
 - Homepage: http://gnuplot.sourceforge.net
]==])

whatis([==[Description: Portable interactive, function plotting utility]==])
whatis([==[Homepage: http://gnuplot.sourceforge.net]==])
whatis([==[URL: http://gnuplot.sourceforge.net]==])

local root = "/apps/easybuild/software/gnuplot/5.4.6-GCCcore-12.2.0"

conflict("gnuplot")

if not ( isloaded("ncurses/6.3") ) then
    load("ncurses/6.3")
end

if not ( isloaded("cairo/1.17.4") ) then
    load("cairo/1.17.4")
end

if not ( isloaded("libjpeg-turbo/2.1.4") ) then
    load("libjpeg-turbo/2.1.4")
end

if not ( isloaded("libpng/1.6.38") ) then
    load("libpng/1.6.38")
end

if not ( isloaded("libgd/2.3.3") ) then
    load("libgd/2.3.3")
end

if not ( isloaded("Pango/1.50.12") ) then
    load("Pango/1.50.12")
end

if not ( isloaded("libcerf/2.3") ) then
    load("libcerf/2.3")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("Qt5/5.15.7") ) then
    load("Qt5/5.15.7")
end

if not ( isloaded("Lua/5.4.4") ) then
    load("Lua/5.4.4")
end

if not ( isloaded("wxWidgets/3.2.2.1") ) then
    load("wxWidgets/3.2.2.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGNUPLOT", root)
setenv("EBVERSIONGNUPLOT", "5.4.6")
setenv("EBDEVELGNUPLOT", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-gnuplot-5.4.6-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
