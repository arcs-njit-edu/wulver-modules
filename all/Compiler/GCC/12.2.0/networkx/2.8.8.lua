help([==[

Description
===========
NetworkX is a Python package for the creation, manipulation,
and study of the structure, dynamics, and functions of complex networks.


More information
================
 - Homepage: https://pypi.python.org/pypi/networkx
]==])

whatis([==[Description: NetworkX is a Python package for the creation, manipulation,
and study of the structure, dynamics, and functions of complex networks.]==])
whatis([==[Homepage: https://pypi.python.org/pypi/networkx]==])
whatis([==[URL: https://pypi.python.org/pypi/networkx]==])

local root = "/apps/easybuild/software/networkx/2.8.8-gfbf-2022b"

conflict("networkx")

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("SciPy-bundle/2023.02") ) then
    load("SciPy-bundle/2023.02")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNETWORKX", root)
setenv("EBVERSIONNETWORKX", "2.8.8")
setenv("EBDEVELNETWORKX", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-networkx-2.8.8-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.1
