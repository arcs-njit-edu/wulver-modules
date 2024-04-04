help([==[

Description
===========
COMSOL Multiphysics is a general-purpose software platform, based on
advanced numerical methods, for modeling and simulating physics-based
problems.


More information
================
 - Homepage: https://www.comsol.com
]==])

whatis([==[Description: 
COMSOL Multiphysics is a general-purpose software platform, based on
advanced numerical methods, for modeling and simulating physics-based
problems. 
]==])
whatis([==[Homepage: https://www.comsol.com]==])
whatis([==[URL: https://www.comsol.com]==])

local root = "/apps/easybuild/software/COMSOL/5.6"

conflict("COMSOL")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCOMSOL", root)
setenv("EBVERSIONCOMSOL", "5.6")
setenv("EBDEVELCOMSOL", pathJoin(root, "easybuild/Core-COMSOL-5.6-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.1
