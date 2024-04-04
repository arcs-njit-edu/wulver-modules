help([==[

Description
===========
LAMMPS is a classical molecular dynamics code, and an acronym
for Large-scale Atomic/Molecular Massively Parallel Simulator. LAMMPS has
potentials for solid-state materials (metals, semiconductors) and soft matter
(biomolecules, polymers) and coarse-grained or mesoscopic systems. It can be
used to model atoms or, more generically, as a parallel particle simulator at
the atomic, meso, or continuum scale. LAMMPS runs on single processors or in
parallel using message-passing techniques and a spatial-decomposition of the
simulation domain. The code is designed to be easy to modify or extend with new
functionality.


More information
================
 - Homepage: https://www.lammps.org
]==])

whatis([==[Description: LAMMPS is a classical molecular dynamics code, and an acronym
for Large-scale Atomic/Molecular Massively Parallel Simulator. LAMMPS has
potentials for solid-state materials (metals, semiconductors) and soft matter
(biomolecules, polymers) and coarse-grained or mesoscopic systems. It can be
used to model atoms or, more generically, as a parallel particle simulator at
the atomic, meso, or continuum scale. LAMMPS runs on single processors or in
parallel using message-passing techniques and a spatial-decomposition of the
simulation domain. The code is designed to be easy to modify or extend with new
functionality.
]==])
whatis([==[Homepage: https://www.lammps.org]==])
whatis([==[URL: https://www.lammps.org]==])

local root = "/apps/easybuild/software/LAMMPS/23Jun2022-foss-2021b-kokkos"

conflict("LAMMPS")

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

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("netCDF/4.8.1") ) then
    load("netCDF/4.8.1")
end

if not ( isloaded("GSL/2.7") ) then
    load("GSL/2.7")
end

if not ( isloaded("gzip/1.10") ) then
    load("gzip/1.10")
end

if not ( isloaded("cURL/7.78.0") ) then
    load("cURL/7.78.0")
end

if not ( isloaded("HDF5/1.12.1") ) then
    load("HDF5/1.12.1")
end

if not ( isloaded("PCRE/8.45") ) then
    load("PCRE/8.45")
end

if not ( isloaded("FFmpeg/4.3.2") ) then
    load("FFmpeg/4.3.2")
end

if not ( isloaded("Voro++/0.4.6") ) then
    load("Voro++/0.4.6")
end

if not ( isloaded("kim-api/2.3.0") ) then
    load("kim-api/2.3.0")
end

if not ( isloaded("Eigen/3.4.0") ) then
    load("Eigen/3.4.0")
end

if not ( isloaded("PLUMED/2.7.3") ) then
    load("PLUMED/2.7.3")
end

if not ( isloaded("ScaFaCoS/1.0.1") ) then
    load("ScaFaCoS/1.0.1")
end

if not ( isloaded("SciPy-bundle/2021.10") ) then
    load("SciPy-bundle/2021.10")
end

if not ( isloaded("VTK/9.1.0") ) then
    load("VTK/9.1.0")
end

if not ( isloaded("tbb/2020.3") ) then
    load("tbb/2020.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLAMMPS", root)
setenv("EBVERSIONLAMMPS", "23Jun2022")
setenv("EBDEVELLAMMPS", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-LAMMPS-23Jun2022-kokkos-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.8.2
