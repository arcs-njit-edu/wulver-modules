help([==[

Description
===========
Compiler toolchain including Intel compilers, Intel MPI and Intel Math Kernel Library (MKL).


More information
================
 - Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#intel-toolchain
]==])

whatis([==[Description: Compiler toolchain including Intel compilers, Intel MPI and Intel Math Kernel Library (MKL).]==])
whatis([==[Homepage: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#intel-toolchain]==])
whatis([==[URL: https://easybuild.readthedocs.io/en/master/Common-toolchains.html#intel-toolchain]==])

local root = "/apps/easybuild/software/intel/2022b"

conflict("intel")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("binutils/2.39") ) then
    load("binutils/2.39")
end

if not ( isloaded("intel-compilers/2022.2.1") ) then
    load("intel-compilers/2022.2.1")
end

if not ( isloaded("impi/2021.7.1") ) then
    load("impi/2021.7.1")
end

if not ( isloaded("imkl/2022.2.1") ) then
    load("imkl/2022.2.1")
end

if not ( isloaded("imkl-FFTW/2022.2.1") ) then
    load("imkl-FFTW/2022.2.1")
end

setenv("EBROOTINTEL", root)
setenv("EBVERSIONINTEL", "2022b")
setenv("EBDEVELINTEL", pathJoin(root, "easybuild/Core-intel-2022b-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
