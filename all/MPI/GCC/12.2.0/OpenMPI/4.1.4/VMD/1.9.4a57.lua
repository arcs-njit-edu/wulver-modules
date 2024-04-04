help([==[

Description
===========
VMD is a molecular visualization program for displaying, animating, and analyzing large biomolecular
 systems using 3-D graphics and built-in scripting.


More information
================
 - Homepage: https://www.ks.uiuc.edu/Research/vmd
]==])

whatis([==[Description: VMD is a molecular visualization program for displaying, animating, and analyzing large biomolecular
 systems using 3-D graphics and built-in scripting.]==])
whatis([==[Homepage: https://www.ks.uiuc.edu/Research/vmd]==])
whatis([==[URL: https://www.ks.uiuc.edu/Research/vmd]==])

local root = "/apps/easybuild/software/VMD/1.9.4a57-foss-2022b"

conflict("VMD")

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

if not ( isloaded("Tcl/8.6.12") ) then
    load("Tcl/8.6.12")
end

if not ( isloaded("Tk/8.6.12") ) then
    load("Tk/8.6.12")
end

if not ( isloaded("FLTK/1.3.8") ) then
    load("FLTK/1.3.8")
end

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("SciPy-bundle/2023.02") ) then
    load("SciPy-bundle/2023.02")
end

if not ( isloaded("Tkinter/3.10.8") ) then
    load("Tkinter/3.10.8")
end

if not ( isloaded("Mesa/22.2.4") ) then
    load("Mesa/22.2.4")
end

if not ( isloaded("netCDF/4.9.0") ) then
    load("netCDF/4.9.0")
end

if not ( isloaded("FFmpeg/6.1.1") ) then
    load("FFmpeg/6.1.1")
end

if not ( isloaded("ImageMagick/7.1.0-53") ) then
    load("ImageMagick/7.1.0-53")
end

if not ( isloaded("ACTC/1.1") ) then
    load("ACTC/1.1")
end

if not ( isloaded("libpng/1.6.38") ) then
    load("libpng/1.6.38")
end

if not ( isloaded("POV-Ray/3.7.0.10") ) then
    load("POV-Ray/3.7.0.10")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVMD", root)
setenv("EBVERSIONVMD", "1.9.4a57")
setenv("EBDEVELVMD", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-VMD-1.9.4a57-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
