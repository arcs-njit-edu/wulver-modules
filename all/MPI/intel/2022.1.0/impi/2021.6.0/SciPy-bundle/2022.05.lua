help([==[

Description
===========
Bundle of Python packages for scientific software


More information
================
 - Homepage: https://python.org/


Included extensions
===================
beniget-0.4.1, Bottleneck-1.3.4, deap-1.3.3, gast-0.5.3, mpi4py-3.1.3,
mpmath-1.2.1, numexpr-2.8.1, numpy-1.22.3, pandas-1.4.2, ply-3.11,
pythran-0.11.0, scipy-1.8.1
]==])

whatis([==[Description: Bundle of Python packages for scientific software]==])
whatis([==[Homepage: https://python.org/]==])
whatis([==[URL: https://python.org/]==])
whatis([==[Extensions: beniget-0.4.1, Bottleneck-1.3.4, deap-1.3.3, gast-0.5.3, mpi4py-3.1.3, mpmath-1.2.1, numexpr-2.8.1, numpy-1.22.3, pandas-1.4.2, ply-3.11, pythran-0.11.0, scipy-1.8.1]==])

local root = "/apps/easybuild/software/SciPy-bundle/2022.05-intel-2022a"

conflict("SciPy-bundle")

if not ( isloaded("imkl/2022.1.0") ) then
    load("imkl/2022.1.0")
end

if not ( isloaded("imkl-FFTW/2022.1.0") ) then
    load("imkl-FFTW/2022.1.0")
end

if not ( isloaded("Python/3.10.4") ) then
    load("Python/3.10.4")
end

if not ( isloaded("pybind11/2.9.2") ) then
    load("pybind11/2.9.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIPYMINBUNDLE", root)
setenv("EBVERSIONSCIPYMINBUNDLE", "2022.05")
setenv("EBDEVELSCIPYMINBUNDLE", pathJoin(root, "easybuild/MPI-intel-2022.1.0-impi-2021.6.0-SciPy-bundle-2022.05-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.7.1
prepend_path("CPATH", pathJoin(root, "lib/python3.10/site-packages/numpy/core/include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib/python3.10/site-packages/numpy/core/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib/python3.10/site-packages/numpy/core/lib"))
setenv("EBEXTSLISTSCIPYMINBUNDLE", "numpy-1.22.3,ply-3.11,gast-0.5.3,beniget-0.4.1,pythran-0.11.0,scipy-1.8.1,mpi4py-3.1.3,numexpr-2.8.1,Bottleneck-1.3.4,pandas-1.4.2,mpmath-1.2.1,deap-1.3.3")
