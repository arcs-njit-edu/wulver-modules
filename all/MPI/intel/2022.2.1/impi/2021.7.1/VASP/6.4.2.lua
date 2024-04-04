help([==[

Description
===========
The Vienna Ab initio Simulation Package (VASP) is a computer program for atomic scale
materials modelling, e.g. electronic structure calculations and quantum-mechanical molecular dynamics,
based on Density Futional Theory (DFT). In this version VASPsol (https://github.com/henniggroup/VASPsol)
and scripts and modules for calculating transition states, VTSTTools (http://theory.cm.utexas.edu/vtsttools/)
has been implemented to the original version of vasp This version of vasp also supports 
HDF5, Wannier90, Libbeef, Libxc, and DFTD4.


More information
================
 - Homepage: http://www.vasp.at
]==])

whatis([==[Description: The Vienna Ab initio Simulation Package (VASP) is a computer program for atomic scale
materials modelling, e.g. electronic structure calculations and quantum-mechanical molecular dynamics,
based on Density Futional Theory (DFT). In this version VASPsol (https://github.com/henniggroup/VASPsol)
and scripts and modules for calculating transition states, VTSTTools (http://theory.cm.utexas.edu/vtsttools/)
has been implemented to the original version of vasp This version of vasp also supports 
HDF5, Wannier90, Libbeef, Libxc, and DFTD4.]==])
whatis([==[Homepage: http://www.vasp.at]==])
whatis([==[URL: http://www.vasp.at]==])

local root = "/apps/easybuild/software/VASP/6.4.2-intel-2022b"

conflict("VASP")
if not ( userInGroup("sw_vasp") ) then
    LmodError("You must be a member of a group licensed to use VASP. Contact hpc@njit.edu for assistance")
end

if not ( isloaded("imkl/2022.2.1") ) then
    load("imkl/2022.2.1")
end

if not ( isloaded("imkl-FFTW/2022.2.1") ) then
    load("imkl-FFTW/2022.2.1")
end

if not ( isloaded("HDF5/1.14.0") ) then
    load("HDF5/1.14.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVASP", root)
setenv("EBVERSIONVASP", "6.4.2")
setenv("EBDEVELVASP", pathJoin(root, "easybuild/MPI-intel-2022.2.1-impi-2021.7.1-VASP-6.4.2-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
