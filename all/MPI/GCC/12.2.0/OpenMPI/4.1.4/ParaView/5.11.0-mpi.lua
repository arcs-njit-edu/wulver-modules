help([==[

Description
===========
ParaView is a scientific parallel visualizer.


More information
================
 - Homepage: https://www.paraview.org
]==])

whatis([==[Description: ParaView is a scientific parallel visualizer.]==])
whatis([==[Homepage: https://www.paraview.org]==])
whatis([==[URL: https://www.paraview.org]==])

local root = "/apps/easybuild/software/ParaView/5.11.0-foss-2022b-mpi"

conflict("ParaView")

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

if not ( isloaded("HDF5/1.14.0") ) then
    load("HDF5/1.14.0")
end

if not ( isloaded("netCDF/4.9.0") ) then
    load("netCDF/4.9.0")
end

if not ( isloaded("libGLU/9.0.2") ) then
    load("libGLU/9.0.2")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("Mesa/22.2.4") ) then
    load("Mesa/22.2.4")
end

if not ( isloaded("Qt5/5.15.7") ) then
    load("Qt5/5.15.7")
end

if not ( isloaded("FFmpeg/5.1.2") ) then
    load("FFmpeg/5.1.2")
end

if not ( isloaded("Szip/2.1.1") ) then
    load("Szip/2.1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPARAVIEW", root)
setenv("EBVERSIONPARAVIEW", "5.11.0")
setenv("EBDEVELPARAVIEW", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-ParaView-5.11.0-mpi-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.0
