help([==[

Description
===========
UCC (Unified Collective Communication) is a collective
communication operations API and library that is flexible, complete, and 
feature-rich for current and emerging programming models and runtimes.


More information
================
 - Homepage: https://www.openucx.org/
]==])

whatis([==[Description: UCC (Unified Collective Communication) is a collective
communication operations API and library that is flexible, complete, and 
feature-rich for current and emerging programming models and runtimes.
]==])
whatis([==[Homepage: https://www.openucx.org/]==])
whatis([==[URL: https://www.openucx.org/]==])

local root = "/apps/easybuild/software/UCC/1.2.0-GCCcore-13.2.0"

conflict("UCC")

if not ( isloaded("UCX/1.15.0") ) then
    load("UCX/1.15.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTUCC", root)
setenv("EBVERSIONUCC", "1.2.0")
setenv("EBDEVELUCC", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-UCC-1.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
