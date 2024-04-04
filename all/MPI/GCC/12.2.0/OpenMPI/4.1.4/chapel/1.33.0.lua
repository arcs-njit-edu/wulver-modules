help([==[

Description
===========
Chapel is a programming language designed for productive parallel computing at scale.


More information
================
 - Homepage: https://chapel-lang.org/
]==])

whatis([==[Description: 
 Chapel is a programming language designed for productive parallel computing at scale.
]==])
whatis([==[Homepage: https://chapel-lang.org/]==])
whatis([==[URL: https://chapel-lang.org/]==])

local root = "/apps/easybuild/software/chapel/1.33.0-foss-2022b"

conflict("chapel")

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

if not ( isloaded("GMP/6.2.1") ) then
    load("GMP/6.2.1")
end

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("ncurses/6.3") ) then
    load("ncurses/6.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCHAPEL", root)
setenv("EBVERSIONCHAPEL", "1.33.0")
setenv("EBDEVELCHAPEL", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-chapel-1.33.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/chapel/1.33/third-party/chpl-venv/install/chpldeps"))
-- Built with EasyBuild version 4.8.2

setenv("CHPL_COMM", "gasnet")
setenv("CHPL_LAUNCHER", "gasnetrun_mpi")
setenv("CHPL_COMM_SUBSTRATE", "mpi")
setenv("CHPL_GASNET_SEGMENT", "fast")
setenv("CHPL_GMP", "system")
setenv("CHPL_HWLOC", "system")
setenv("CHPL_GASNET_VERSION", "1")
setenv("CHPL_LLVM", "none")

