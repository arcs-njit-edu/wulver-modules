help([==[

Description
===========
Spack is a package manager for supercomputers, Linux, and macOS. It makes installing scientific
 software easy. With Spack, you can build a package with multiple versions, configurations, platforms, and compilers,
 and all of these builds can coexist on the same machine.


More information
================
 - Homepage: https://spack.io/
]==])

whatis([==[Description: Spack is a package manager for supercomputers, Linux, and macOS. It makes installing scientific
 software easy. With Spack, you can build a package with multiple versions, configurations, platforms, and compilers,
 and all of these builds can coexist on the same machine.]==])
whatis([==[Homepage: https://spack.io/]==])
whatis([==[URL: https://spack.io/]==])

local root = "/apps/easybuild/software/Spack/0.17.2"

conflict("Spack")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSPACK", root)
setenv("EBVERSIONSPACK", "0.17.2")
setenv("EBDEVELSPACK", pathJoin(root, "easybuild/Core-Spack-0.17.2-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
