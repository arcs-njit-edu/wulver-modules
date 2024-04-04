help([==[

Description
===========
ANSYS simulation software enables organizations to confidently predict 
    how their products will operate in the real world. We believe that every product is 
    a promise of something greater.


More information
================
 - Homepage: http://www.ansys.com
]==])

whatis([==[Description: ANSYS simulation software enables organizations to confidently predict 
    how their products will operate in the real world. We believe that every product is 
    a promise of something greater. ]==])
whatis([==[Homepage: http://www.ansys.com]==])
whatis([==[URL: http://www.ansys.com]==])

local root = "/apps/easybuild/software/ANSYS/2022"

conflict("ANSYS")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "v221/Framework/bin/Linux64"))
prepend_path("PATH", pathJoin(root, "v221/aisol/bin/linx64"))
prepend_path("PATH", pathJoin(root, "v221/RSM/bin"))
prepend_path("PATH", pathJoin(root, "v221/ansys/bin"))
prepend_path("PATH", pathJoin(root, "v221/autodyn/bin"))
prepend_path("PATH", pathJoin(root, "v221/CFD-Post/bin"))
prepend_path("PATH", pathJoin(root, "v221/CFX/bin"))
prepend_path("PATH", pathJoin(root, "v221/fluent/bin"))
prepend_path("PATH", pathJoin(root, "v221/TurboGrid/bin"))
prepend_path("PATH", pathJoin(root, "v221/polyflow/bin"))
prepend_path("PATH", pathJoin(root, "v221/Icepak/bin"))
prepend_path("PATH", pathJoin(root, "v221/icemcfd/linux64_amd/bin"))
prepend_path("PATH", pathJoin(root, "v221/CEI/bin"))
setenv("EBROOTANSYS", root)
setenv("EBVERSIONANSYS", "2022")
setenv("EBDEVELANSYS", pathJoin(root, "easybuild/Core-ANSYS-2022-easybuild-devel"))

prepend_path("PATH", root)
setenv("ICEM_ACN", "/apps/easybuild/software/ANSYS/2022/v221/icemcfd/linux64_amd")
-- Built with EasyBuild version 4.7.1
