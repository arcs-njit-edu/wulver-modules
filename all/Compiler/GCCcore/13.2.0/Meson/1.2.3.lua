help([==[

Description
===========
Meson is a cross-platform build system designed to be both as fast and as user friendly as possible.


More information
================
 - Homepage: https://mesonbuild.com
]==])

whatis([==[Description: Meson is a cross-platform build system designed to be both as fast and as user friendly as possible.]==])
whatis([==[Homepage: https://mesonbuild.com]==])
whatis([==[URL: https://mesonbuild.com]==])

local root = "/apps/easybuild/software/Meson/1.2.3-GCCcore-13.2.0"

conflict("Meson")

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

if not ( isloaded("Ninja/1.11.1") ) then
    load("Ninja/1.11.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMESON", root)
setenv("EBVERSIONMESON", "1.2.3")
setenv("EBDEVELMESON", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-Meson-1.2.3-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
