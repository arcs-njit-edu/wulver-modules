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

local root = "/apps/easybuild/software/iimpi/2021b"

conflict("iimpi")

if not ( isloaded("intel-compilers/2021.4.0") ) then
    load("intel-compilers/2021.4.0")
end

if not ( isloaded("impi/2021.4.0") ) then
    load("impi/2021.4.0")
end

setenv("EBROOTIIMPI", root)
setenv("EBVERSIONIIMPI", "2021b")
setenv("EBDEVELIIMPI", pathJoin(root, "easybuild/Core-iimpi-2021b-easybuild-devel"))
prepend_path("I_MPI_PMI_LIBRARY", pathJoin("/cm/shared/apps/slurm/current/lib64/libpmi.so"))

-- Built with EasyBuild version 4.7.1
