help([==[

Description
===========
Gaussian provides state-of-the-art capabilities for electronic structure
modeling. Gaussian 09 is licensed for a wide variety of computer
systems. All versions of Gaussian 09 contain every scientific/modeling
feature, and none imposes any artificial limitations on calculations
other than your computing resources and patience.

This is the official gaussian AVX2 build.


More information
================
 - Homepage: https://www.gaussian.com/
]==])

whatis([==[Description: 
Gaussian provides state-of-the-art capabilities for electronic structure
modeling. Gaussian 09 is licensed for a wide variety of computer
systems. All versions of Gaussian 09 contain every scientific/modeling
feature, and none imposes any artificial limitations on calculations
other than your computing resources and patience.

This is the official gaussian AVX2 build.
]==])
whatis([==[Homepage: https://www.gaussian.com/]==])
whatis([==[URL: https://www.gaussian.com/]==])

local root = "/apps/easybuild/software/Gaussian/16.C.01-AVX2"

conflict("Gaussian")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGAUSSIAN", root)
setenv("EBVERSIONGAUSSIAN", "16.C.01")
setenv("EBDEVELGAUSSIAN", pathJoin(root, "easybuild/Core-Gaussian-16.C.01-AVX2-easybuild-devel"))

setenv("USE_MESAGL","1")
setenv("g16root", "/apps/easybuild/software/Gaussian/16.C.01-AVX2")
setenv("_DSM_BARRIER", "SHM")
setenv("PGI_TERM", "trace,abort")
append_path("PATH", pathJoin(root, "g16/bsd"))
append_path("PATH", pathJoin(root, "g16"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "g16"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "g16/bsd"))
prepend_path("PYTHONPATH", pathJoin(root, "g16/bsd"))
prepend_path("PYTHONPATH", pathJoin(root, "g16"))
setenv("GAUSS_ARCHDIR", pathJoin(root, "g16/arch"))
setenv("GAUSS_BSDDIR", pathJoin(root, "g16/bsd"))
prepend_path("GAUSS_EXEDIR", pathJoin(root, "g16"))
prepend_path("GAUSS_EXEDIR", pathJoin(root, "g16/bsd"))
setenv("GV_DIR", pathJoin(root, "gv"))
setenv("G16BASIS", pathJoin(root, "g16/basis"))
setenv("GAUSS_LEXEDIR", pathJoin(root, "g16/linda-exe"))
prepend_path("PERLLIB", pathJoin(root, "g16/bsd"))
prepend_path("PERLLIB", pathJoin(root, "g16"))
set_alias("gv", pathJoin(root, "gv/gview.sh"))
-- Built with EasyBuild version 4.7.1
