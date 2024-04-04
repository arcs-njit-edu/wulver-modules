help([==[

Description
===========
Google's framework for writing C++ tests on a variety of platforms


More information
================
 - Homepage: https://github.com/google/googletest
]==])

whatis([==[Description: Google's framework for writing C++ tests on a variety of platforms]==])
whatis([==[Homepage: https://github.com/google/googletest]==])
whatis([==[URL: https://github.com/google/googletest]==])

local root = "/apps/easybuild/software/googletest/1.12.1-GCCcore-12.2.0"

conflict("googletest")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTGOOGLETEST", root)
setenv("EBVERSIONGOOGLETEST", "1.12.1")
setenv("EBDEVELGOOGLETEST", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-googletest-1.12.1-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
