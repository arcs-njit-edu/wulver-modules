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

local root = "/apps/easybuild/software/ParaView/5.11.2-egl"

conflict("ParaView")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPARAVIEW", root)
setenv("EBVERSIONPARAVIEW", "5.11.2")
setenv("EBDEVELPARAVIEW", pathJoin(root, "easybuild/Core-ParaView-5.11.2-egl-easybuild-devel"))
setenv("NVINDEX_VENDOR_KEY", "NVIDIA IndeX License for NJIT, US IndeX:PV::v1 - 20231019 (oem:retail_cloud.20251031)")
setenv("NVINDEX_SECRET_KEY", "9a77d500367d256c7041045be315a4ed2584c726d2a1c4c091ffa8fede9d8ec9")

prepend_path("PATH", root)
-- Built with EasyBuild version 4.8.0
