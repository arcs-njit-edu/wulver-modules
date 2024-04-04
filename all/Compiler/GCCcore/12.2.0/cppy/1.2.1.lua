help([==[

Description
===========
A small C++ header library which makes it easier to write
Python extension modules. The primary feature is a PyObject smart pointer
which automatically handles reference counting and provides convenience
methods for performing common object operations.


More information
================
 - Homepage: https://github.com/nucleic/cppy
]==])

whatis([==[Description: A small C++ header library which makes it easier to write
Python extension modules. The primary feature is a PyObject smart pointer
which automatically handles reference counting and provides convenience
methods for performing common object operations.]==])
whatis([==[Homepage: https://github.com/nucleic/cppy]==])
whatis([==[URL: https://github.com/nucleic/cppy]==])

local root = "/apps/easybuild/software/cppy/1.2.1-GCCcore-12.2.0"

conflict("cppy")

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTCPPY", root)
setenv("EBVERSIONCPPY", "1.2.1")
setenv("EBDEVELCPPY", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-cppy-1.2.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.1
