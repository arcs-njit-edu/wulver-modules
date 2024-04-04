help([==[

Description
===========
SDL: Simple DirectMedia Layer, a cross-platform multimedia library


More information
================
 - Homepage: https://www.libsdl.org/
]==])

whatis([==[Description: SDL: Simple DirectMedia Layer, a cross-platform multimedia library]==])
whatis([==[Homepage: https://www.libsdl.org/]==])
whatis([==[URL: https://www.libsdl.org/]==])

local root = "/apps/easybuild/software/SDL2/2.26.3-GCCcore-12.2.0"

conflict("SDL2")

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSDL2", root)
setenv("EBVERSIONSDL2", "2.26.3")
setenv("EBDEVELSDL2", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-SDL2-2.26.3-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
