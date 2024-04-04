help([==[

Description
===========
X.org macros utilities.


More information
================
 - Homepage: https://gitlab.freedesktop.org/xorg/util/macros
]==])

whatis([==[Description: X.org macros utilities.]==])
whatis([==[Homepage: https://gitlab.freedesktop.org/xorg/util/macros]==])
whatis([==[URL: https://gitlab.freedesktop.org/xorg/util/macros]==])

local root = "/apps/easybuild/software/xorg-macros/1.20.0-GCCcore-13.2.0"

conflict("xorg-macros")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXORGMINMACROS", root)
setenv("EBVERSIONXORGMINMACROS", "1.20.0")
setenv("EBDEVELXORGMINMACROS", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-xorg-macros-1.20.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
