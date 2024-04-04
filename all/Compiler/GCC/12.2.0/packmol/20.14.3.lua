help([==[

Description
===========
Packing Optimization for Molecular Dynamics Simulations


More information
================
 - Homepage: http://m3g.iqm.unicamp.br/packmol
]==])

whatis([==[Description: Packing Optimization for Molecular Dynamics Simulations]==])
whatis([==[Homepage: http://m3g.iqm.unicamp.br/packmol]==])
whatis([==[URL: http://m3g.iqm.unicamp.br/packmol]==])

local root = "/apps/easybuild/software/packmol/20.14.3-GCC-12.2.0"

conflict("packmol")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPACKMOL", root)
setenv("EBVERSIONPACKMOL", "20.14.3")
setenv("EBDEVELPACKMOL", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-packmol-20.14.3-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
