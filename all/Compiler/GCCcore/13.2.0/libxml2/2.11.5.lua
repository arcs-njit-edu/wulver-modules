help([==[

Description
===========
Libxml2 is the XML C parser and toolchain developed for the Gnome project
 (but usable outside of the Gnome platform).


More information
================
 - Homepage: http://xmlsoft.org/
]==])

whatis([==[Description: 
 Libxml2 is the XML C parser and toolchain developed for the Gnome project
 (but usable outside of the Gnome platform).
]==])
whatis([==[Homepage: http://xmlsoft.org/]==])
whatis([==[URL: http://xmlsoft.org/]==])

local root = "/apps/easybuild/software/libxml2/2.11.5-GCCcore-13.2.0"

conflict("libxml2")

if not ( isloaded("XZ/5.4.4") ) then
    load("XZ/5.4.4")
end

if not ( isloaded("zlib/1.2.13") ) then
    load("zlib/1.2.13")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBXML2", root)
setenv("EBVERSIONLIBXML2", "2.11.5")
setenv("EBDEVELLIBXML2", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-libxml2-2.11.5-easybuild-devel"))

prepend_path("CPATH", pathJoin(root, "include/libxml2"))
-- Built with EasyBuild version 4.9.0
