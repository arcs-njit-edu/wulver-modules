help([==[

Description
===========
Least-squares methods to estimate rates and dates from phylogenies


More information
================
 - Homepage: https://github.com/tothuhien/lsd2
]==])

whatis([==[Description: Least-squares methods to estimate rates and dates from phylogenies]==])
whatis([==[Homepage: https://github.com/tothuhien/lsd2]==])
whatis([==[URL: https://github.com/tothuhien/lsd2]==])

local root = "/apps/easybuild/software/LSD2/2.4.1-GCCcore-12.2.0"

conflict("LSD2")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTLSD2", root)
setenv("EBVERSIONLSD2", "2.4.1")
setenv("EBDEVELLSD2", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-LSD2-2.4.1-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
