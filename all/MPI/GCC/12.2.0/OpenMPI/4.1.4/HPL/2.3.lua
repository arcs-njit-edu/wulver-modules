help([==[

Description
===========
HPL is a software package that solves a (random) dense linear system in double precision (64 bits)
 arithmetic on distributed-memory computers. It can thus be regarded as a portable as well as freely available
 implementation of the High Performance Computing Linpack Benchmark.


More information
================
 - Homepage: https://www.netlib.org/benchmark/hpl/
]==])

whatis([==[Description: HPL is a software package that solves a (random) dense linear system in double precision (64 bits)
 arithmetic on distributed-memory computers. It can thus be regarded as a portable as well as freely available
 implementation of the High Performance Computing Linpack Benchmark.]==])
whatis([==[Homepage: https://www.netlib.org/benchmark/hpl/]==])
whatis([==[URL: https://www.netlib.org/benchmark/hpl/]==])

local root = "/apps/easybuild/software/HPL/2.3-foss-2022b"

conflict("HPL")

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

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHPL", root)
setenv("EBVERSIONHPL", "2.3")
setenv("EBDEVELHPL", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-HPL-2.3-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
