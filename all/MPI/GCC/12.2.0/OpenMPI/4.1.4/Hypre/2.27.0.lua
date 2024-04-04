help([==[

Description
===========
Hypre is a library for solving large, sparse linear systems of equations on massively
 parallel computers. The problems of interest arise in the simulation codes being developed at LLNL
 and elsewhere to study physical phenomena in the defense, environmental, energy, and biological sciences.


More information
================
 - Homepage: https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods
]==])

whatis([==[Description: Hypre is a library for solving large, sparse linear systems of equations on massively
 parallel computers. The problems of interest arise in the simulation codes being developed at LLNL
 and elsewhere to study physical phenomena in the defense, environmental, energy, and biological sciences.]==])
whatis([==[Homepage: https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods]==])
whatis([==[URL: https://computation.llnl.gov/projects/hypre-scalable-linear-solvers-multigrid-methods]==])

local root = "/apps/easybuild/software/Hypre/2.27.0-foss-2022b"

conflict("Hypre")

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
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTHYPRE", root)
setenv("EBVERSIONHYPRE", "2.27.0")
setenv("EBDEVELHYPRE", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-Hypre-2.27.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
