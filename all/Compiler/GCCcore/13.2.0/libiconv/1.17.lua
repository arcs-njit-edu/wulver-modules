help([==[

Description
===========
Libiconv converts from one character encoding to another through Unicode conversion


More information
================
 - Homepage: https://www.gnu.org/software/libiconv
]==])

whatis([==[Description: Libiconv converts from one character encoding to another through Unicode conversion]==])
whatis([==[Homepage: https://www.gnu.org/software/libiconv]==])
whatis([==[URL: https://www.gnu.org/software/libiconv]==])

local root = "/apps/easybuild/software/libiconv/1.17-GCCcore-13.2.0"

conflict("libiconv")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBICONV", root)
setenv("EBVERSIONLIBICONV", "1.17")
setenv("EBDEVELLIBICONV", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-libiconv-1.17-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
