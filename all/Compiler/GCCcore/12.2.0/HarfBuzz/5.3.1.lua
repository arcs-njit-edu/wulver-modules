help([==[

Description
===========
HarfBuzz is an OpenType text shaping engine.


More information
================
 - Homepage: https://www.freedesktop.org/wiki/Software/HarfBuzz
]==])

whatis([==[Description: HarfBuzz is an OpenType text shaping engine.]==])
whatis([==[Homepage: https://www.freedesktop.org/wiki/Software/HarfBuzz]==])
whatis([==[URL: https://www.freedesktop.org/wiki/Software/HarfBuzz]==])

local root = "/apps/easybuild/software/HarfBuzz/5.3.1-GCCcore-12.2.0"

conflict("HarfBuzz")

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

if not ( isloaded("ICU/72.1") ) then
    load("ICU/72.1")
end

if not ( isloaded("cairo/1.17.4") ) then
    load("cairo/1.17.4")
end

if not ( isloaded("freetype/2.12.1") ) then
    load("freetype/2.12.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTHARFBUZZ", root)
setenv("EBVERSIONHARFBUZZ", "5.3.1")
setenv("EBDEVELHARFBUZZ", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-HarfBuzz-5.3.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
