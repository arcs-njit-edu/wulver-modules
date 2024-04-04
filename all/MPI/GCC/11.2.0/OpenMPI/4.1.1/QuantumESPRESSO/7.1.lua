help([==[

Description
===========
Quantum ESPRESSO  is an integrated suite of computer codes
for electronic-structure calculations and materials modeling at the nanoscale.
It is based on density-functional theory, plane waves, and pseudopotentials
(both norm-conserving and ultrasoft).


More information
================
 - Homepage: https://www.quantum-espresso.org
]==])

whatis([==[Description: Quantum ESPRESSO  is an integrated suite of computer codes
for electronic-structure calculations and materials modeling at the nanoscale.
It is based on density-functional theory, plane waves, and pseudopotentials
(both norm-conserving and ultrasoft).
]==])
whatis([==[Homepage: https://www.quantum-espresso.org]==])
whatis([==[URL: https://www.quantum-espresso.org]==])

local root = "/apps/easybuild/software/QuantumESPRESSO/7.1-foss-2021b"

conflict("QuantumESPRESSO")

if not ( isloaded("FlexiBLAS/3.0.4") ) then
    load("FlexiBLAS/3.0.4")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.1.0-fb") ) then
    load("ScaLAPACK/2.1.0-fb")
end

if not ( isloaded("HDF5/1.12.1") ) then
    load("HDF5/1.12.1")
end

if not ( isloaded("ELPA/2021.05.001") ) then
    load("ELPA/2021.05.001")
end

if not ( isloaded("libxc/5.1.6") ) then
    load("libxc/5.1.6")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTQUANTUMESPRESSO", root)
setenv("EBVERSIONQUANTUMESPRESSO", "7.1")
setenv("EBDEVELQUANTUMESPRESSO", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-QuantumESPRESSO-7.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
