help([==[

Description
===========
Ninja is a small build system with a focus on speed.


More information
================
 - Homepage: https://ninja-build.org/
]==])

whatis([==[Description: Ninja is a small build system with a focus on speed.]==])
whatis([==[Homepage: https://ninja-build.org/]==])
whatis([==[URL: https://ninja-build.org/]==])

local root = "/apps/easybuild/software/Ninja/1.11.1-GCCcore-12.2.0"

conflict("Ninja")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNINJA", root)
setenv("EBVERSIONNINJA", "1.11.1")
setenv("EBDEVELNINJA", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Ninja-1.11.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
