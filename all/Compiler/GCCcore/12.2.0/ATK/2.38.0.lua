help([==[

Description
===========
ATK provides the set of accessibility interfaces that are implemented by other
 toolkits and applications. Using the ATK interfaces, accessibility tools have
 full access to view and control running applications.


More information
================
 - Homepage: https://developer.gnome.org/atk/
]==])

whatis([==[Description: 
 ATK provides the set of accessibility interfaces that are implemented by other
 toolkits and applications. Using the ATK interfaces, accessibility tools have
 full access to view and control running applications.
]==])
whatis([==[Homepage: https://developer.gnome.org/atk/]==])
whatis([==[URL: https://developer.gnome.org/atk/]==])

local root = "/apps/easybuild/software/ATK/2.38.0-GCCcore-12.2.0"

conflict("ATK")

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
setenv("EBROOTATK", root)
setenv("EBVERSIONATK", "2.38.0")
setenv("EBDEVELATK", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-ATK-2.38.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
