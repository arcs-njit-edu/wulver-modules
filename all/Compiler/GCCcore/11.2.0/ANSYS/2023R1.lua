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

local root = "/apps/easybuild/software/ANSYS/2023R1-GCCcore-11.2.0"

conflict("ANSYS")

if not ( isloaded("X11/20210802") ) then
    load("X11/20210802")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "v231/Framework/bin/Linux64"))
prepend_path("PATH", pathJoin(root, "v231/aisol/bin/linx64"))
prepend_path("PATH", pathJoin(root, "v231/RSM/bin"))
prepend_path("PATH", pathJoin(root, "v231/ansys/bin"))
prepend_path("PATH", pathJoin(root, "v231/autodyn/bin"))
prepend_path("PATH", pathJoin(root, "v231/CFD-Post/bin"))
prepend_path("PATH", pathJoin(root, "v231/CFX/bin"))
prepend_path("PATH", pathJoin(root, "v231/fluent/bin"))
prepend_path("PATH", pathJoin(root, "v231/TurboGrid/bin"))
prepend_path("PATH", pathJoin(root, "v231/polyflow/bin"))
prepend_path("PATH", pathJoin(root, "v231/Icepak/bin"))
prepend_path("PATH", pathJoin(root, "v231/icemcfd/linux64_amd/bin"))
prepend_path("PATH", pathJoin(root, "v231/CEI/bin"))
setenv("EBROOTANSYS", root)
setenv("EBVERSIONANSYS", "2023R1")
setenv("EBDEVELANSYS", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-ANSYS-2023R1-easybuild-devel"))

prepend_path("PATH", root)
setenv("ICEM_ACN", "/apps/easybuild/software/ANSYS/2023R1-GCCcore-11.2.0/v231/icemcfd/linux64_amd")
-- Built with EasyBuild version 4.7.1
