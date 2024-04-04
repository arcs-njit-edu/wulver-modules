help([==[

Description
===========
matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.


More information
================
 - Homepage: https://matplotlib.org


Included extensions
===================
Cycler-0.11.0, kiwisolver-1.3.2, matplotlib-3.4.3
]==])

whatis([==[Description: matplotlib is a python 2D plotting library which produces publication quality figures in a variety of
 hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python
 and ipython shell, web application servers, and six graphical user interface toolkits.]==])
whatis([==[Homepage: https://matplotlib.org]==])
whatis([==[URL: https://matplotlib.org]==])
whatis([==[Extensions: Cycler-0.11.0, kiwisolver-1.3.2, matplotlib-3.4.3]==])

local root = "/apps/easybuild/software/matplotlib/3.4.3-foss-2021b"

conflict("matplotlib")

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

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("freetype/2.11.0") ) then
    load("freetype/2.11.0")
end

if not ( isloaded("Tkinter/3.9.6") ) then
    load("Tkinter/3.9.6")
end

if not ( isloaded("Pillow/8.3.2") ) then
    load("Pillow/8.3.2")
end

if not ( isloaded("Qhull/2020.2") ) then
    load("Qhull/2020.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMATPLOTLIB", root)
setenv("EBVERSIONMATPLOTLIB", "3.4.3")
setenv("EBDEVELMATPLOTLIB", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-matplotlib-3.4.3-easybuild-devel"))

setenv("MPLBACKEND", "Agg")
prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
setenv("EBEXTSLISTMATPLOTLIB", "Cycler-0.11.0,kiwisolver-1.3.2,matplotlib-3.4.3")
