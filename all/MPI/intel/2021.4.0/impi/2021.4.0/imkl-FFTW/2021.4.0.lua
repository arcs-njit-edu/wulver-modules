help([==[

Description
===========
FFTW interfaces using Intel oneAPI Math Kernel Library


More information
================
 - Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html
]==])

whatis([==[Description: FFTW interfaces using Intel oneAPI Math Kernel Library]==])
whatis([==[Homepage: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html]==])
whatis([==[URL: https://software.intel.com/content/www/us/en/develop/tools/oneapi/components/onemkl.html]==])

local root = "/apps/easybuild/software/imkl-FFTW/2021.4.0-iimpi-2021b"

conflict("imkl-FFTW")

if not ( isloaded("imkl/2021.4.0") ) then
    load("imkl/2021.4.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTIMKLMINFFTW", root)
setenv("EBVERSIONIMKLMINFFTW", "2021.4.0")
setenv("EBDEVELIMKLMINFFTW", pathJoin(root, "easybuild/MPI-intel-2021.4.0-impi-2021.4.0-imkl-FFTW-2021.4.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
