help([==[

Description
===========
Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.


More information
================
 - Homepage: https://python.org/


Included extensions
===================
flit_core-3.9.0, pip-23.2.1, setuptools-68.2.2, wheel-0.41.2
]==])

whatis([==[Description: Python is a programming language that lets you work more quickly and integrate your systems
 more effectively.]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: flit_core-3.9.0, pip-23.2.1, setuptools-68.2.2, wheel-0.41.2]==])

local root = "/apps/easybuild/software/Python/3.11.5-GCCcore-13.2.0"

conflict("Python")

if not ( isloaded("binutils/2.40") ) then
    load("binutils/2.40")
end

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("zlib/1.2.13") ) then
    load("zlib/1.2.13")
end

if not ( isloaded("libreadline/8.2") ) then
    load("libreadline/8.2")
end

if not ( isloaded("ncurses/6.4") ) then
    load("ncurses/6.4")
end

if not ( isloaded("SQLite/3.43.1") ) then
    load("SQLite/3.43.1")
end

if not ( isloaded("XZ/5.4.4") ) then
    load("XZ/5.4.4")
end

if not ( isloaded("libffi/3.4.4") ) then
    load("libffi/3.4.4")
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
setenv("EBVERSIONPYTHON", "3.11.5")
setenv("EBDEVELPYTHON", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-Python-3.11.5-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "easybuild/python"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTPYTHON", "flit_core-3.9.0,wheel-0.41.2,setuptools-68.2.2,pip-23.2.1")
