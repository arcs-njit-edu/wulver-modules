help([==[

Description
===========
pybind11 is a lightweight header-only library that exposes C++ types in Python and vice versa,
 mainly to create Python bindings of existing C++ code.


More information
================
 - Homepage: https://pybind11.readthedocs.io
]==])

whatis([==[Description: pybind11 is a lightweight header-only library that exposes C++ types in Python and vice versa,
 mainly to create Python bindings of existing C++ code.]==])
whatis([==[Homepage: https://pybind11.readthedocs.io]==])
whatis([==[URL: https://pybind11.readthedocs.io]==])

local root = "/apps/easybuild/software/pybind11/2.9.2-GCCcore-11.3.0"

conflict("pybind11")

if not ( isloaded("Python/3.10.4") ) then
    load("Python/3.10.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYBIND11", root)
setenv("EBVERSIONPYBIND11", "2.9.2")
setenv("EBDEVELPYBIND11", pathJoin(root, "easybuild/Compiler-GCCcore-11.3.0-pybind11-2.9.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.1
