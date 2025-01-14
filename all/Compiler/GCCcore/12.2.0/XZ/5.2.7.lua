help([==[

Description
===========
xz: XZ utilities


More information
================
 - Homepage: https://tukaani.org/xz/
]==])

whatis([==[Description: xz: XZ utilities]==])
whatis([==[Homepage: https://tukaani.org/xz/]==])
whatis([==[URL: https://tukaani.org/xz/]==])

local root = "/apps/easybuild/software/XZ/5.2.7-GCCcore-12.2.0"

conflict("XZ")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXZ", root)
setenv("EBVERSIONXZ", "5.2.7")
setenv("EBDEVELXZ", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-XZ-5.2.7-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
