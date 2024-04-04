help([==[

Description
===========
Silo is a library for reading and writing a wide variety of scientific data to binary, files


More information
================
 - Homepage: http://software.llnl.gov/Silo
]==])

whatis([==[Description: 
 Silo is a library for reading and writing a wide variety of scientific data to binary, files
]==])
whatis([==[Homepage: http://software.llnl.gov/Silo]==])
whatis([==[URL: http://software.llnl.gov/Silo]==])

local root = "/apps/easybuild/software/silo/4.10.2-GCC-12.2.0"

conflict("silo")

if not ( isloaded("Qt5/5.15.7") ) then
    load("Qt5/5.15.7")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSILO", root)
setenv("EBVERSIONSILO", "4.10.2")
setenv("EBDEVELSILO", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-silo-4.10.2-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
