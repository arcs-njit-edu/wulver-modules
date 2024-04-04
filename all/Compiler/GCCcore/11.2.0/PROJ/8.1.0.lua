help([==[

Description
===========
Program proj is a standard Unix filter function which converts
geographic longitude and latitude coordinates into cartesian coordinates


More information
================
 - Homepage: https://proj.org
]==])

whatis([==[Description: Program proj is a standard Unix filter function which converts
geographic longitude and latitude coordinates into cartesian coordinates]==])
whatis([==[Homepage: https://proj.org]==])
whatis([==[URL: https://proj.org]==])

local root = "/apps/easybuild/software/PROJ/8.1.0-GCCcore-11.2.0"

conflict("PROJ")

if not ( isloaded("SQLite/3.36") ) then
    load("SQLite/3.36")
end

if not ( isloaded("LibTIFF/4.3.0") ) then
    load("LibTIFF/4.3.0")
end

if not ( isloaded("cURL/7.78.0") ) then
    load("cURL/7.78.0")
end

if not ( isloaded("XZ/5.2.5") ) then
    load("XZ/5.2.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPROJ", root)
setenv("EBVERSIONPROJ", "8.1.0")
setenv("EBDEVELPROJ", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-PROJ-8.1.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
