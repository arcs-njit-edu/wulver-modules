help([==[

Description
===========
SQLite: SQL Database Engine in a C Library


More information
================
 - Homepage: https://www.sqlite.org/
]==])

whatis([==[Description: SQLite: SQL Database Engine in a C Library]==])
whatis([==[Homepage: https://www.sqlite.org/]==])
whatis([==[URL: https://www.sqlite.org/]==])

local root = "/apps/easybuild/software/SQLite/3.38.3-GCCcore-11.3.0"

conflict("SQLite")

if not ( isloaded("libreadline/8.1.2") ) then
    load("libreadline/8.1.2")
end

if not ( isloaded("Tcl/8.6.12") ) then
    load("Tcl/8.6.12")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSQLITE", root)
setenv("EBVERSIONSQLITE", "3.38.3")
setenv("EBDEVELSQLITE", pathJoin(root, "easybuild/Compiler-GCCcore-11.3.0-SQLite-3.38.3-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
