help([==[

Description
===========
The Visualization Toolkit (VTK) is an open-source, freely available software system for
 3D computer graphics, image processing and visualization. VTK consists of a C++ class library and several
 interpreted interface layers including Tcl/Tk, Java, and Python. VTK supports a wide variety of visualization
 algorithms including: scalar, vector, tensor, texture, and volumetric methods; and advanced modeling techniques
 such as: implicit modeling, polygon reduction, mesh smoothing, cutting, contouring, and Delaunay triangulation.


More information
================
 - Homepage: https://www.vtk.org
]==])

whatis([==[Description: The Visualization Toolkit (VTK) is an open-source, freely available software system for
 3D computer graphics, image processing and visualization. VTK consists of a C++ class library and several
 interpreted interface layers including Tcl/Tk, Java, and Python. VTK supports a wide variety of visualization
 algorithms including: scalar, vector, tensor, texture, and volumetric methods; and advanced modeling techniques
 such as: implicit modeling, polygon reduction, mesh smoothing, cutting, contouring, and Delaunay triangulation.]==])
whatis([==[Homepage: https://www.vtk.org]==])
whatis([==[URL: https://www.vtk.org]==])

local root = "/apps/easybuild/software/VTK/9.1.0-foss-2021b"

conflict("VTK")

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

if not ( isloaded("libGLU/9.0.2") ) then
    load("libGLU/9.0.2")
end

if not ( isloaded("X11/20210802") ) then
    load("X11/20210802")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTVTK", root)
setenv("EBVERSIONVTK", "9.1.0")
setenv("EBDEVELVTK", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-VTK-9.1.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
