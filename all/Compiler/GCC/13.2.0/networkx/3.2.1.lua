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

local root = "/apps/easybuild/software/networkx/3.2.1-gfbf-2023b"

conflict("networkx")

if not ( isloaded("FlexiBLAS/3.3.1") ) then
    load("FlexiBLAS/3.3.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

if not ( isloaded("SciPy-bundle/2023.11") ) then
    load("SciPy-bundle/2023.11")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTNETWORKX", root)
setenv("EBVERSIONNETWORKX", "3.2.1")
setenv("EBDEVELNETWORKX", pathJoin(root, "easybuild/Compiler-GCC-13.2.0-networkx-3.2.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
