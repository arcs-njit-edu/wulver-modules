help([==[

Description
===========
Graphene is a thin layer of types for graphic libraries


More information
================
 - Homepage: https://ebassi.github.io/graphene/
]==])

whatis([==[Description: Graphene is a thin layer of types for graphic libraries]==])
whatis([==[Homepage: https://ebassi.github.io/graphene/]==])
whatis([==[URL: https://ebassi.github.io/graphene/]==])

local root = "/apps/easybuild/software/Graphene/1.10.8-GCCcore-12.2.0"

conflict("Graphene")

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGRAPHENE", root)
setenv("EBVERSIONGRAPHENE", "1.10.8")
setenv("EBDEVELGRAPHENE", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Graphene-1.10.8-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
