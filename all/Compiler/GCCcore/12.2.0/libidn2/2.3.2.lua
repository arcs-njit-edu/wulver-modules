help([==[

Description
===========
Libidn2 implements the revised algorithm for internationalized domain names called IDNA2008/TR46.


More information
================
 - Homepage: http://www.gnu.org/software/libidn2
]==])

whatis([==[Description: Libidn2 implements the revised algorithm for internationalized domain names called IDNA2008/TR46.]==])
whatis([==[Homepage: http://www.gnu.org/software/libidn2]==])
whatis([==[URL: http://www.gnu.org/software/libidn2]==])

local root = "/apps/easybuild/software/libidn2/2.3.2-GCCcore-12.2.0"

conflict("libidn2")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBIDN2", root)
setenv("EBVERSIONLIBIDN2", "2.3.2")
setenv("EBDEVELLIBIDN2", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-libidn2-2.3.2-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
