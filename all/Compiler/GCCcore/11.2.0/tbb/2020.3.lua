help([==[

Description
===========
Intel(R) Threading Building Blocks (Intel(R) TBB) lets you easily write parallel C++ programs that
 take full advantage of multicore performance, that are portable, composable and have future-proof scalability.


More information
================
 - Homepage: https://github.com/oneapi-src/oneTBB
]==])

whatis([==[Description: Intel(R) Threading Building Blocks (Intel(R) TBB) lets you easily write parallel C++ programs that
 take full advantage of multicore performance, that are portable, composable and have future-proof scalability.]==])
whatis([==[Homepage: https://github.com/oneapi-src/oneTBB]==])
whatis([==[URL: https://github.com/oneapi-src/oneTBB]==])

local root = "/apps/easybuild/software/tbb/2020.3-GCCcore-11.2.0"

conflict("tbb")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTTBB", root)
setenv("EBVERSIONTBB", "2020.3")
setenv("EBDEVELTBB", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-tbb-2020.3-easybuild-devel"))

setenv("TBBROOT", "/apps/easybuild/software/tbb/2020.3-GCCcore-11.2.0/")
setenv("TBB_ROOT", "/apps/easybuild/software/tbb/2020.3-GCCcore-11.2.0/")
-- Built with EasyBuild version 4.8.2
