help([==[

Description
===========
Intel C/C++ and Fortran compilers, alongside Intel MPI.


More information
================
 - Homepage: https://software.intel.com/parallel-studio-xe
]==])

whatis([==[Description: Intel C/C++ and Fortran compilers, alongside Intel MPI.]==])
whatis([==[Homepage: https://software.intel.com/parallel-studio-xe]==])
whatis([==[URL: https://software.intel.com/parallel-studio-xe]==])

local root = "/apps/easybuild/software/iimpi/2022a"

conflict("iimpi")

if not ( isloaded("intel-compilers/2022.1.0") ) then
    load("intel-compilers/2022.1.0")
end

if not ( isloaded("impi/2021.6.0") ) then
    load("impi/2021.6.0")
end

setenv("EBROOTIIMPI", root)
setenv("EBVERSIONIIMPI", "2022a")
setenv("EBDEVELIIMPI", pathJoin(root, "easybuild/Core-iimpi-2022a-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
