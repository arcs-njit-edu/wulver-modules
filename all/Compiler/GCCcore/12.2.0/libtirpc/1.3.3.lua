help([==[

Description
===========
Libtirpc is a port of Suns Transport-Independent RPC library to Linux.


More information
================
 - Homepage: https://sourceforge.net/projects/libtirpc/
]==])

whatis([==[Description: Libtirpc is a port of Suns Transport-Independent RPC library to Linux.]==])
whatis([==[Homepage: https://sourceforge.net/projects/libtirpc/]==])
whatis([==[URL: https://sourceforge.net/projects/libtirpc/]==])

local root = "/apps/easybuild/software/libtirpc/1.3.3-GCCcore-12.2.0"

conflict("libtirpc")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBTIRPC", root)
setenv("EBVERSIONLIBTIRPC", "1.3.3")
setenv("EBDEVELLIBTIRPC", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-libtirpc-1.3.3-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/tirpc"))
-- Built with EasyBuild version 4.7.1
