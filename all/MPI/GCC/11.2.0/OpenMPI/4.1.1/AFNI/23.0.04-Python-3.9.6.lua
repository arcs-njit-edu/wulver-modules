help([==[

Description
===========
AFNI is a set of C programs for processing, analyzing, and displaying functional MRI (FMRI) data -
 a technique for mapping human brain activity.


More information
================
 - Homepage: http://afni.nimh.nih.gov/
]==])

whatis([==[Description: AFNI is a set of C programs for processing, analyzing, and displaying functional MRI (FMRI) data -
 a technique for mapping human brain activity.]==])
whatis([==[Homepage: http://afni.nimh.nih.gov/]==])
whatis([==[URL: http://afni.nimh.nih.gov/]==])

local root = "/apps/easybuild/software/AFNI/23.0.04-foss-2021b-Python-3.9.6"

conflict("AFNI")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("tcsh/6.24.01") ) then
    load("tcsh/6.24.01")
end

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

if not ( isloaded("X11/20210802") ) then
    load("X11/20210802")
end

if not ( isloaded("motif/2.3.8") ) then
    load("motif/2.3.8")
end

if not ( isloaded("R/4.2.0") ) then
    load("R/4.2.0")
end

if not ( isloaded("PyQt5/5.15.4") ) then
    load("PyQt5/5.15.4")
end

if not ( isloaded("expat/2.4.1") ) then
    load("expat/2.4.1")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("GSL/2.7") ) then
    load("GSL/2.7")
end

if not ( isloaded("GLib/2.69.1") ) then
    load("GLib/2.69.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTAFNI", root)
setenv("EBVERSIONAFNI", "23.0.04")
setenv("EBDEVELAFNI", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-AFNI-23.0.04-Python-3.9.6-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.1
