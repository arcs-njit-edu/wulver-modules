help([==[

Description
===========
RIP-MD generates RINs for static protein structures or from MD trajectory files.
The non-covalent interactions defined by RIP-MD include Hydrogen bonds, Salt bridges, Van der Waals contacts, cation-π, π-π, Arginine-Arginine and Coulomb interactions.


More information
================
 - Homepage: https://github.com/DLab/RIP-MD
]==])

whatis([==[Description: RIP-MD generates RINs for static protein structures or from MD trajectory files.
The non-covalent interactions defined by RIP-MD include Hydrogen bonds, Salt bridges, Van der Waals contacts, cation-π, π-π, Arginine-Arginine and Coulomb interactions.]==])
whatis([==[Homepage: https://github.com/DLab/RIP-MD]==])
whatis([==[URL: https://github.com/DLab/RIP-MD]==])

local root = "/apps/easybuild/software/RIP-MD/master-foss-2021b"

conflict("RIP-MD")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

if not ( isloaded("MDAnalysis/2.0.0") ) then
    load("MDAnalysis/2.0.0")
end

if not ( isloaded("matplotlib/3.4.3") ) then
    load("matplotlib/3.4.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTRIPMINMD", root)
setenv("EBVERSIONRIPMINMD", "master")
setenv("EBDEVELRIPMINMD", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-RIP-MD-master-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.1
