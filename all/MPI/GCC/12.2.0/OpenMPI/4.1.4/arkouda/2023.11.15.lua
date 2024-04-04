help([==[

Description
===========
Interactive Data Analytics at Supercomputing Scale


More information
================
 - Homepage: https://bears-r-us.github.io/arkouda/


Included extensions
===================
ndindex-1.7, pyfiglet-1.0.2, typeguard-2.2.0, tzdata-2023.3
]==])

whatis([==[Description: Interactive Data Analytics at Supercomputing Scale]==])
whatis([==[Homepage: https://bears-r-us.github.io/arkouda/]==])
whatis([==[URL: https://bears-r-us.github.io/arkouda/]==])
whatis([==[Extensions: ndindex-1.7, pyfiglet-1.0.2, typeguard-2.2.0, tzdata-2023.3]==])

local root = "/apps/easybuild/software/arkouda/2023.11.15-foss-2022b"

conflict("arkouda")

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("FFTW.MPI/3.3.10") ) then
    load("FFTW.MPI/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.2.0-fb") ) then
    load("ScaLAPACK/2.2.0-fb")
end

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("SciPy-bundle/2023.02") ) then
    load("SciPy-bundle/2023.02")
end

if not ( isloaded("Arrow/11.0.0") ) then
    load("Arrow/11.0.0")
end

if not ( isloaded("HDF5/1.14.0") ) then
    load("HDF5/1.14.0")
end

if not ( isloaded("libiconv/1.17") ) then
    load("libiconv/1.17")
end

if not ( isloaded("libidn2/2.3.2") ) then
    load("libidn2/2.3.2")
end

if not ( isloaded("matplotlib/3.7.0") ) then
    load("matplotlib/3.7.0")
end

if not ( isloaded("ZeroMQ/4.3.4") ) then
    load("ZeroMQ/4.3.4")
end

if not ( isloaded("cURL/7.86.0") ) then
    load("cURL/7.86.0")
end

if not ( isloaded("PyTables/3.8.0") ) then
    load("PyTables/3.8.0")
end

if not ( isloaded("PyZMQ/25.1.0") ) then
    load("PyZMQ/25.1.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTARKOUDA", root)
setenv("EBVERSIONARKOUDA", "2023.11.15")
setenv("EBDEVELARKOUDA", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-arkouda-2023.11.15-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
setenv("EBEXTSLISTARKOUDA", "ndindex-1.7,pyfiglet-1.0.2,tzdata-2023.3,typeguard-2.2.0")
