help([==[

Description
===========
Eigenvalue SoLvers for Petaflop-Applications.


More information
================
 - Homepage: https://elpa.mpcdf.mpg.de
]==])

whatis([==[Description: Eigenvalue SoLvers for Petaflop-Applications.]==])
whatis([==[Homepage: https://elpa.mpcdf.mpg.de]==])
whatis([==[URL: https://elpa.mpcdf.mpg.de]==])

local root = "/apps/easybuild/software/ELPA/2021.11.001-intel-2021b"

conflict("ELPA")

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
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTELPA", root)
setenv("EBVERSIONELPA", "2021.11.001")
setenv("EBDEVELELPA", pathJoin(root, "easybuild/MPI-intel-2021.4.0-impi-2021.4.0-ELPA-2021.11.001-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
