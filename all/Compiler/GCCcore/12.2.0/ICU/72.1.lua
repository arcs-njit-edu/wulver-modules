help([==[

Description
===========
ICU is a mature, widely used set of C/C++ and Java libraries providing Unicode and Globalization
 support for software applications.


More information
================
 - Homepage: https://icu.unicode.org
]==])

whatis([==[Description: ICU is a mature, widely used set of C/C++ and Java libraries providing Unicode and Globalization
 support for software applications.]==])
whatis([==[Homepage: https://icu.unicode.org]==])
whatis([==[URL: https://icu.unicode.org]==])

local root = "/apps/easybuild/software/ICU/72.1-GCCcore-12.2.0"

conflict("ICU")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTICU", root)
setenv("EBVERSIONICU", "72.1")
setenv("EBDEVELICU", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-ICU-72.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
