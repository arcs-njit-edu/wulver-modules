help([==[

Description
===========
A complete, cross-platform solution to record, convert and stream audio and video.


More information
================
 - Homepage: https://www.ffmpeg.org/
]==])

whatis([==[Description: A complete, cross-platform solution to record, convert and stream audio and video.]==])
whatis([==[Homepage: https://www.ffmpeg.org/]==])
whatis([==[URL: https://www.ffmpeg.org/]==])

local root = "/apps/easybuild/software/FFmpeg/6.1.1-GCCcore-12.2.0"

conflict("FFmpeg")

if not ( isloaded("NASM/2.15.05") ) then
    load("NASM/2.15.05")
end

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("x264/20230226") ) then
    load("x264/20230226")
end

if not ( isloaded("LAME/3.100") ) then
    load("LAME/3.100")
end

if not ( isloaded("x265/3.5") ) then
    load("x265/3.5")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("freetype/2.12.1") ) then
    load("freetype/2.12.1")
end

if not ( isloaded("fontconfig/2.14.1") ) then
    load("fontconfig/2.14.1")
end

if not ( isloaded("FriBidi/1.0.12") ) then
    load("FriBidi/1.0.12")
end

if not ( isloaded("SDL2/2.26.3") ) then
    load("SDL2/2.26.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFFMPEG", root)
setenv("EBVERSIONFFMPEG", "6.1.1")
setenv("EBDEVELFFMPEG", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-FFmpeg-6.1.1-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
