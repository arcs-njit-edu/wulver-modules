help([==[

Description
===========
Eigenvalue SoLvers for Petaflop-Applications .


More information
================
 - Homepage: https://elpa.mpcdf.mpg.de
]==])

whatis([==[Description: Eigenvalue SoLvers for Petaflop-Applications .]==])
whatis([==[Homepage: https://elpa.mpcdf.mpg.de]==])
whatis([==[URL: https://elpa.mpcdf.mpg.de]==])

local root = "/apps/easybuild/software/ELPA/2021.05.001-foss-2021b"

conflict("ELPA")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTELPA", root)
setenv("EBVERSIONELPA", "2021.05.001")
setenv("EBDEVELELPA", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-ELPA-2021.05.001-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
