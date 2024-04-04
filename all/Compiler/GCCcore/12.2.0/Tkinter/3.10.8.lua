help([==[

Description
===========
Tkinter module, built with the Python buildsystem


More information
================
 - Homepage: https://python.org/
]==])

whatis([==[Description: Tkinter module, built with the Python buildsystem]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])

local root = "/apps/easybuild/software/Tkinter/3.10.8-GCCcore-12.2.0"

conflict("Tkinter")

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("Tk/8.6.12") ) then
    load("Tk/8.6.12")
end

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTTKINTER", root)
setenv("EBVERSIONTKINTER", "3.10.8")
setenv("EBDEVELTKINTER", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Tkinter-3.10.8-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
