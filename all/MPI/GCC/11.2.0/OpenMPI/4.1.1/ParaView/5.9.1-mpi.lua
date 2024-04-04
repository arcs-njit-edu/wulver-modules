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

local root = "/apps/easybuild/software/ParaView/5.9.1-foss-2021b-mpi"

conflict("ParaView")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

if not ( isloaded("SciPy-bundle/2021.10") ) then
    load("SciPy-bundle/2021.10")
end

if not ( isloaded("HDF5/1.12.1") ) then
    load("HDF5/1.12.1")
end

if not ( isloaded("netCDF/4.8.1") ) then
    load("netCDF/4.8.1")
end

if not ( isloaded("libGLU/9.0.2") ) then
    load("libGLU/9.0.2")
end

if not ( isloaded("X11/20210802") ) then
    load("X11/20210802")
end

if not ( isloaded("Mesa/21.1.7") ) then
    load("Mesa/21.1.7")
end

if not ( isloaded("Qt5/5.15.2") ) then
    load("Qt5/5.15.2")
end

if not ( isloaded("FFmpeg/4.3.2") ) then
    load("FFmpeg/4.3.2")
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
setenv("EBVERSIONPARAVIEW", "5.9.1")
setenv("EBDEVELPARAVIEW", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-ParaView-5.9.1-mpi-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
