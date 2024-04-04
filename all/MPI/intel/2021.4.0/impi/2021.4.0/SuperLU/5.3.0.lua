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

local root = "/apps/easybuild/software/SuperLU/5.3.0-intel-2021b"

conflict("SuperLU")

if not ( isloaded("imkl/2021.4.0") ) then
    load("imkl/2021.4.0")
end

if not ( isloaded("imkl-FFTW/2021.4.0") ) then
    load("imkl-FFTW/2021.4.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSUPERLU", root)
setenv("EBVERSIONSUPERLU", "5.3.0")
setenv("EBDEVELSUPERLU", pathJoin(root, "easybuild/MPI-intel-2021.4.0-impi-2021.4.0-SuperLU-5.3.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
