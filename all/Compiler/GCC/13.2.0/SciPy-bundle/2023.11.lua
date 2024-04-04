help([==[

Description
===========
Bundle of Python packages for scientific software


More information
================
 - Homepage: https://python.org/


Included extensions
===================
beniget-0.4.1, Bottleneck-1.3.7, deap-1.4.1, gast-0.5.4, mpmath-1.3.0,
numexpr-2.8.7, numpy-1.26.2, pandas-2.1.3, ply-3.11, pythran-0.14.0,
scipy-1.11.4, tzdata-2023.3, versioneer-0.29
]==])

whatis([==[Description: Bundle of Python packages for scientific software]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: beniget-0.4.1, Bottleneck-1.3.7, deap-1.4.1, gast-0.5.4, mpmath-1.3.0, numexpr-2.8.7, numpy-1.26.2, pandas-2.1.3, ply-3.11, pythran-0.14.0, scipy-1.11.4, tzdata-2023.3, versioneer-0.29]==])

local root = "/apps/easybuild/software/SciPy-bundle/2023.11-gfbf-2023b"

conflict("SciPy-bundle")

if not ( isloaded("FlexiBLAS/3.3.1") ) then
    load("FlexiBLAS/3.3.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

if not ( isloaded("Python-bundle-PyPI/2023.10") ) then
    load("Python-bundle-PyPI/2023.10")
end

if not ( isloaded("pybind11/2.11.1") ) then
    load("pybind11/2.11.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIPYMINBUNDLE", root)
setenv("EBVERSIONSCIPYMINBUNDLE", "2023.11")
setenv("EBDEVELSCIPYMINBUNDLE", pathJoin(root, "easybuild/Compiler-GCC-13.2.0-SciPy-bundle-2023.11-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
prepend_path("CPATH", pathJoin(root, "lib/python3.11/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.11/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.11/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTSCIPYMINBUNDLE", "numpy-1.26.2,ply-3.11,gast-0.5.4,beniget-0.4.1,pythran-0.14.0,versioneer-0.29,scipy-1.11.4,numexpr-2.8.7,Bottleneck-1.3.7,tzdata-2023.3,pandas-2.1.3,mpmath-1.3.0,deap-1.4.1")
