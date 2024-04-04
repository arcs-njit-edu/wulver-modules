help([==[

Description
===========
The MAGMA project aims to develop a dense linear algebra library similar to
 LAPACK but for heterogeneous/hybrid architectures, starting with current Multicore+GPU systems.


More information
================
 - Homepage: https://icl.cs.utk.edu/magma/
]==])

whatis([==[Description: The MAGMA project aims to develop a dense linear algebra library similar to
 LAPACK but for heterogeneous/hybrid architectures, starting with current Multicore+GPU systems.]==])
whatis([==[Homepage: https://icl.cs.utk.edu/magma/]==])
whatis([==[URL: https://icl.cs.utk.edu/magma/]==])

local root = "/apps/easybuild/software/magma/2.6.2-foss-2021b-CUDA-11.4.1"

conflict("magma")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTMAGMA", root)
setenv("EBVERSIONMAGMA", "2.6.2")
setenv("EBDEVELMAGMA", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-magma-2.6.2-CUDA-11.4.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
