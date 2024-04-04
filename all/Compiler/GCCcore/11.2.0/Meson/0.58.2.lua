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

local root = "/apps/easybuild/software/Meson/0.58.2-GCCcore-11.2.0"

conflict("Meson")

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

if not ( isloaded("Ninja/1.10.2") ) then
    load("Ninja/1.10.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMESON", root)
setenv("EBVERSIONMESON", "0.58.2")
setenv("EBDEVELMESON", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-Meson-0.58.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
