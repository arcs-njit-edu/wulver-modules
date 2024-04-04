help([==[

Description
===========
ParaView is a scientific parallel visualizer.


More information
================
 - Homepage: https://www.paraview.org
]==])

whatis([==[Description: ParaView is a scientific parallel visualizer.]==])
whatis([==[Homepage: https://www.paraview.org]==])
whatis([==[URL: https://www.paraview.org]==])

local root = "/apps/easybuild/software/ParaView/5.11.0-egl"

conflict("ParaView")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPARAVIEW", root)
setenv("EBVERSIONPARAVIEW", "5.11.0")
setenv("EBDEVELPARAVIEW", pathJoin(root, "easybuild/Core-ParaView-5.11.0-egl-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.1
