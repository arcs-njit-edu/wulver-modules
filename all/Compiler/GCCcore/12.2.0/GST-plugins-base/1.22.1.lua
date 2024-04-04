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

local root = "/apps/easybuild/software/GST-plugins-base/1.22.1-GCCcore-12.2.0"

conflict("GST-plugins-base")

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

if not ( isloaded("GStreamer/1.22.1") ) then
    load("GStreamer/1.22.1")
end

if not ( isloaded("Gdk-Pixbuf/2.42.10") ) then
    load("Gdk-Pixbuf/2.42.10")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("Mesa/22.2.4") ) then
    load("Mesa/22.2.4")
end

if not ( isloaded("Graphene/1.10.8") ) then
    load("Graphene/1.10.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGSTMINPLUGINSMINBASE", root)
setenv("EBVERSIONGSTMINPLUGINSMINBASE", "1.22.1")
setenv("EBDEVELGSTMINPLUGINSMINBASE", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-GST-plugins-base-1.22.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
