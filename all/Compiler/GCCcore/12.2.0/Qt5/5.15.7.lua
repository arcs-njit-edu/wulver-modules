help([==[

Description
===========
Qt is a comprehensive cross-platform C++ application framework.


More information
================
 - Homepage: https://qt.io/
]==])

whatis([==[Description: Qt is a comprehensive cross-platform C++ application framework.]==])
whatis([==[Homepage: https://qt.io/]==])
whatis([==[URL: https://qt.io/]==])

local root = "/apps/easybuild/software/Qt5/5.15.7-GCCcore-12.2.0"

conflict("Qt5")

if not ( isloaded("double-conversion/3.2.1") ) then
    load("double-conversion/3.2.1")
end

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

if not ( isloaded("PCRE2/10.40") ) then
    load("PCRE2/10.40")
end

if not ( isloaded("libpng/1.6.38") ) then
    load("libpng/1.6.38")
end

if not ( isloaded("HarfBuzz/5.3.1") ) then
    load("HarfBuzz/5.3.1")
end

if not ( isloaded("graphite2/1.3.14") ) then
    load("graphite2/1.3.14")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("fontconfig/2.14.1") ) then
    load("fontconfig/2.14.1")
end

if not ( isloaded("DBus/1.15.2") ) then
    load("DBus/1.15.2")
end

if not ( isloaded("libevent/2.1.12") ) then
    load("libevent/2.1.12")
end

if not ( isloaded("libGLU/9.0.2") ) then
    load("libGLU/9.0.2")
end

if not ( isloaded("libjpeg-turbo/2.1.4") ) then
    load("libjpeg-turbo/2.1.4")
end

if not ( isloaded("NSS/3.85") ) then
    load("NSS/3.85")
end

if not ( isloaded("snappy/1.1.9") ) then
    load("snappy/1.1.9")
end

if not ( isloaded("JasPer/4.0.0") ) then
    load("JasPer/4.0.0")
end

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

if not ( isloaded("ICU/72.1") ) then
    load("ICU/72.1")
end

if not ( isloaded("nodejs/18.12.1") ) then
    load("nodejs/18.12.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTQT5", root)
setenv("EBVERSIONQT5", "5.15.7")
setenv("EBDEVELQT5", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Qt5-5.15.7-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
