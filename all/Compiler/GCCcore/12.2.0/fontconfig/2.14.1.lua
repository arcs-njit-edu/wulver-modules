help([==[

Description
===========
Fontconfig is a library designed to provide system-wide font configuration,
 customization and application access.


More information
================
 - Homepage: https://www.freedesktop.org/wiki/Software/fontconfig/
]==])

whatis([==[Description: 
 Fontconfig is a library designed to provide system-wide font configuration,
 customization and application access.
]==])
whatis([==[Homepage: https://www.freedesktop.org/wiki/Software/fontconfig/]==])
whatis([==[URL: https://www.freedesktop.org/wiki/Software/fontconfig/]==])

local root = "/apps/easybuild/software/fontconfig/2.14.1-GCCcore-12.2.0"

conflict("fontconfig")

if not ( isloaded("expat/2.4.9") ) then
    load("expat/2.4.9")
end

if not ( isloaded("freetype/2.12.1") ) then
    load("freetype/2.12.1")
end

if not ( isloaded("util-linux/2.38.1") ) then
    load("util-linux/2.38.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTFONTCONFIG", root)
setenv("EBVERSIONFONTCONFIG", "2.14.1")
setenv("EBDEVELFONTCONFIG", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-fontconfig-2.14.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
