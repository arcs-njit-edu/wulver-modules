help([==[

Description
===========
xtb - An extended tight-binding semi-empirical program package.


More information
================
 - Homepage: https://xtb-docs.readthedocs.io
]==])

whatis([==[Description:  xtb - An extended tight-binding semi-empirical program package. ]==])
whatis([==[Homepage: https://xtb-docs.readthedocs.io]==])
whatis([==[URL: https://xtb-docs.readthedocs.io]==])

local root = "/apps/easybuild/software/xtb/6.6.1-gfbf-2022b"

conflict("xtb")

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXTB", root)
setenv("EBVERSIONXTB", "6.6.1")
setenv("EBDEVELXTB", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-xtb-6.6.1-easybuild-devel"))

setenv("XTBHOME", "/apps/easybuild/software/xtb/6.6.1-gfbf-2022b")
setenv("XTBPATH", "/apps/easybuild/software/xtb/6.6.1-gfbf-2022b")
-- Built with EasyBuild version 4.8.2
