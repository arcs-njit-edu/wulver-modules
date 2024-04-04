help([==[

Description
===========
GObject introspection is a middleware layer between C libraries
 (using GObject) and language bindings. The C library can be scanned at
 compile time and generate a metadata file, in addition to the actual
 native C library. Then at runtime, language bindings can read this
 metadata and automatically provide bindings to call into the C library.


More information
================
 - Homepage: https://gi.readthedocs.io/en/latest/
]==])

whatis([==[Description: GObject introspection is a middleware layer between C libraries
 (using GObject) and language bindings. The C library can be scanned at
 compile time and generate a metadata file, in addition to the actual
 native C library. Then at runtime, language bindings can read this
 metadata and automatically provide bindings to call into the C library.]==])
whatis([==[Homepage: https://gi.readthedocs.io/en/latest/]==])
whatis([==[URL: https://gi.readthedocs.io/en/latest/]==])

local root = "/apps/easybuild/software/GObject-Introspection/1.74.0-GCCcore-12.2.0"

conflict("GObject-Introspection")

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("GLib/2.75.0") ) then
    load("GLib/2.75.0")
end

if not ( isloaded("libffi/3.4.4") ) then
    load("libffi/3.4.4")
end

if not ( isloaded("util-linux/2.38.1") ) then
    load("util-linux/2.38.1")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("GI_TYPELIB_PATH", pathJoin(root, "lib/girepository-1.0"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGOBJECTMININTROSPECTION", root)
setenv("EBVERSIONGOBJECTMININTROSPECTION", "1.74.0")
setenv("EBDEVELGOBJECTMININTROSPECTION", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-GObject-Introspection-1.74.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
