help([==[

Description
===========
A python script using MDAnalysis and Numpy that computes the permeation of water molecules through a bilayer membranes in a 
Molecular Dynamics simulation. See details at https://github.com/ahardiag/perm-md-count


More information
================
 - Homepage: https://github.com/ahardiag/perm-md-count
]==])

whatis([==[Description: A python script using MDAnalysis and Numpy that computes the permeation of water molecules through a bilayer membranes in a 
Molecular Dynamics simulation. See details at https://github.com/ahardiag/perm-md-count]==])
whatis([==[Homepage: https://github.com/ahardiag/perm-md-count]==])
whatis([==[URL: https://github.com/ahardiag/perm-md-count]==])

local root = "/apps/easybuild/software/perm-md-count/main-foss-2021b"

conflict("perm-md-count")

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
setenv("EBROOTPERMMINMDMINCOUNT", root)
setenv("EBVERSIONPERMMINMDMINCOUNT", "main")
setenv("EBDEVELPERMMINMDMINCOUNT", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-perm-md-count-main-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.8.2
