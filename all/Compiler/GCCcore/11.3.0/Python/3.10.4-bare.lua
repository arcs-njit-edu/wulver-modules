help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.


More information
================
 - Homepage: https://python.org/
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])

local root = "/apps/easybuild/software/Python/3.10.4-GCCcore-11.3.0-bare"

conflict("Python")

if not ( isloaded("binutils/2.38") ) then
    load("binutils/2.38")
end

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

if not ( isloaded("libreadline/8.1.2") ) then
    load("libreadline/8.1.2")
end

if not ( isloaded("ncurses/6.3") ) then
    load("ncurses/6.3")
end

if not ( isloaded("SQLite/3.38.3") ) then
    load("SQLite/3.38.3")
end

if not ( isloaded("XZ/5.2.5") ) then
    load("XZ/5.2.5")
end

if not ( isloaded("libffi/3.4.2") ) then
    load("libffi/3.4.2")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYTHON", root)
setenv("EBVERSIONPYTHON", "3.10.4")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/Compiler-GCCcore-11.3.0-Python-3.10.4-bare-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "easybuild/python"))
-- Built with EasyBuild version 4.7.1
