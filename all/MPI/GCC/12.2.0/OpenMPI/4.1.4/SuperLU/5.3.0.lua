help([==[

Description
===========
SuperLU is a general purpose library for the 
direct solution of large, sparse, nonsymmetric systems
 of linear equations on high performance machines.


More information
================
 - Homepage: https://crd-legacy.lbl.gov/~xiaoye/SuperLU/
]==])

whatis([==[Description: SuperLU is a general purpose library for the 
direct solution of large, sparse, nonsymmetric systems
 of linear equations on high performance machines.]==])
whatis([==[Homepage: https://crd-legacy.lbl.gov/~xiaoye/SuperLU/]==])
whatis([==[URL: https://crd-legacy.lbl.gov/~xiaoye/SuperLU/]==])

local root = "/apps/easybuild/software/SuperLU/5.3.0-foss-2022b"

conflict("SuperLU")

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
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSUPERLU", root)
setenv("EBVERSIONSUPERLU", "5.3.0")
setenv("EBDEVELSUPERLU", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-SuperLU-5.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
