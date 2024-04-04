help([==[

Description
===========
Grace is a WYSIWYG tool to make two-dimensional plots of numerical data.


More information
================
 - Homepage: https://plasma-gate.weizmann.ac.il/Grace/
]==])

whatis([==[Description: Grace is a WYSIWYG tool to make two-dimensional plots of numerical data.]==])
whatis([==[Homepage: https://plasma-gate.weizmann.ac.il/Grace/]==])
whatis([==[URL: https://plasma-gate.weizmann.ac.il/Grace/]==])

local root = "/apps/easybuild/software/Grace/5.1.25-foss-2022b"

conflict("Grace")

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

if not ( isloaded("motif/2.3.8") ) then
    load("motif/2.3.8")
end

if not ( isloaded("netCDF/4.9.0") ) then
    load("netCDF/4.9.0")
end

if not ( isloaded("libtirpc/1.3.3") ) then
    load("libtirpc/1.3.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGRACE", root)
setenv("EBVERSIONGRACE", "5.1.25")
setenv("EBDEVELGRACE", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-Grace-5.1.25-easybuild-devel"))

setenv("GRACE_HOME", "/apps/easybuild/software/Grace/5.1.25-foss-2022b")
-- Built with EasyBuild version 4.7.1
