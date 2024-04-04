help([==[

Description
===========
GStreamer is a library for constructing graphs of media-handling
 components. The applications it supports range from simple
 Ogg/Vorbis playback, audio/video streaming to complex audio
 (mixing) and video (non-linear editing) processing.


More information
================
 - Homepage: https://gstreamer.freedesktop.org/
]==])

whatis([==[Description: GStreamer is a library for constructing graphs of media-handling
 components. The applications it supports range from simple
 Ogg/Vorbis playback, audio/video streaming to complex audio
 (mixing) and video (non-linear editing) processing.]==])
whatis([==[Homepage: https://gstreamer.freedesktop.org/]==])
whatis([==[URL: https://gstreamer.freedesktop.org/]==])

local root = "/apps/easybuild/software/GStreamer/1.22.1-GCCcore-12.2.0"

conflict("GStreamer")

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

if not ( isloaded("GMP/6.2.1") ) then
    load("GMP/6.2.1")
end

if not ( isloaded("GSL/2.7") ) then
    load("GSL/2.7")
end

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

if not ( isloaded("libunwind/1.6.2") ) then
    load("libunwind/1.6.2")
end

if not ( isloaded("elfutils/0.189") ) then
    load("elfutils/0.189")
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
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGSTREAMER", root)
setenv("EBVERSIONGSTREAMER", "1.22.1")
setenv("EBDEVELGSTREAMER", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-GStreamer-1.22.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
