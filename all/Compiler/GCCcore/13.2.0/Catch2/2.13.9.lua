help([==[

Description
===========
A modern, C++-native, header-only,
 test framework for unit-tests, TDD and BDD
 - using C++11, C++14, C++17 and later


More information
================
 - Homepage: https://github.com/catchorg/Catch2
]==])

whatis([==[Description: A modern, C++-native, header-only,
 test framework for unit-tests, TDD and BDD
 - using C++11, C++14, C++17 and later
]==])
whatis([==[Homepage: https://github.com/catchorg/Catch2]==])
whatis([==[URL: https://github.com/catchorg/Catch2]==])

local root = "/apps/easybuild/software/Catch2/2.13.9-GCCcore-13.2.0"

conflict("Catch2")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCATCH2", root)
setenv("EBVERSIONCATCH2", "2.13.9")
setenv("EBDEVELCATCH2", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-Catch2-2.13.9-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
