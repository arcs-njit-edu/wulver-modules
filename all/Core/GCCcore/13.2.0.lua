help([==[

Description
===========
The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).


More information
================
 - Homepage: https://gcc.gnu.org/
]==])

whatis([==[Description: The GNU Compiler Collection includes front ends for C, C++, Objective-C, Fortran, Java, and Ada,
 as well as libraries for these languages (libstdc++, libgcj,...).]==])
whatis([==[Homepage: https://gcc.gnu.org/]==])
whatis([==[URL: https://gcc.gnu.org/]==])

local root = "/apps/easybuild/software/GCCcore/13.2.0"

conflict("GCCcore")
prepend_path("MODULEPATH", "/apps/easybuild/modules/all/Compiler/GCCcore/13.2.0")

prepend_path("CMAKE_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib64"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGCCCORE", root)
setenv("EBVERSIONGCCCORE", "13.2.0")
setenv("EBDEVELGCCCORE", pathJoin(root, "easybuild/Core-GCCcore-13.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
