help([==[

Description
===========
ORCA is a flexible, efficient and easy-to-use general purpose tool for quantum
chemistry with specific emphasis on spectroscopic properties of open-shell
molecules. It features a wide variety of standard quantum chemical methods
ranging from semiempirical methods to DFT to single- and multireference
correlated ab initio methods. It can also treat environmental and relativistic
effects.


More information
================
 - Homepage: https://orcaforum.kofo.mpg.de
]==])

whatis([==[Description: 
ORCA is a flexible, efficient and easy-to-use general purpose tool for quantum
chemistry with specific emphasis on spectroscopic properties of open-shell
molecules. It features a wide variety of standard quantum chemical methods
ranging from semiempirical methods to DFT to single- and multireference
correlated ab initio methods. It can also treat environmental and relativistic
effects.]==])
whatis([==[Homepage: https://orcaforum.kofo.mpg.de]==])
whatis([==[URL: https://orcaforum.kofo.mpg.de]==])

local root = "/apps/easybuild/software/ORCA/5.0.4-gompi-2022b"

conflict("ORCA")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTORCA", root)
setenv("EBVERSIONORCA", "5.0.4")
setenv("EBDEVELORCA", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-ORCA-5.0.4-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.8.2
