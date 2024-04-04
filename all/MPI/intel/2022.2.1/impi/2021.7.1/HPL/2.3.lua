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

local root = "/apps/easybuild/software/HPL/2.3-intel-2022b"

conflict("HPL")

if not ( isloaded("imkl/2022.2.1") ) then
    load("imkl/2022.2.1")
end

if not ( isloaded("imkl-FFTW/2022.2.1") ) then
    load("imkl-FFTW/2022.2.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHPL", root)
setenv("EBVERSIONHPL", "2.3")
setenv("EBDEVELHPL", pathJoin(root, "easybuild/MPI-intel-2022.2.1-impi-2021.7.1-HPL-2.3-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
