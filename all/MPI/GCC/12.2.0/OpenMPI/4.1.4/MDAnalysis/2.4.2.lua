help([==[

Description
===========
MDAnalysis is an object-oriented Python library to analyze trajectories from molecular dynamics (MD)
simulations in many popular formats.


More information
================
 - Homepage: https://www.mdanalysis.org/


Included extensions
===================
fasteners-0.18, funcsigs-1.0.2, GridDataFormats-1.0.1, gsd-2.8.0,
MDAnalysis-2.4.2, mmtf-python-1.1.3, mrcfile-1.4.3, msgpack-1.0.5
]==])

whatis([==[Description: MDAnalysis is an object-oriented Python library to analyze trajectories from molecular dynamics (MD)
simulations in many popular formats.]==])
whatis([==[Homepage: https://www.mdanalysis.org/]==])
whatis([==[URL: https://www.mdanalysis.org/]==])
whatis([==[Extensions: fasteners-0.18, funcsigs-1.0.2, GridDataFormats-1.0.1, gsd-2.8.0, MDAnalysis-2.4.2, mmtf-python-1.1.3, mrcfile-1.4.3, msgpack-1.0.5]==])

local root = "/apps/easybuild/software/MDAnalysis/2.4.2-foss-2022b"

conflict("MDAnalysis")

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("FFTW.MPI/3.3.10") ) then
    load("FFTW.MPI/3.3.10")
end

if not ( isloaded("ScaLAPACK/2.2.0-fb") ) then
    load("ScaLAPACK/2.2.0-fb")
end

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("SciPy-bundle/2023.02") ) then
    load("SciPy-bundle/2023.02")
end

if not ( isloaded("matplotlib/3.7.0") ) then
    load("matplotlib/3.7.0")
end

if not ( isloaded("Biopython/1.81") ) then
    load("Biopython/1.81")
end

if not ( isloaded("networkx/3.0") ) then
    load("networkx/3.0")
end

if not ( isloaded("tqdm/4.64.1") ) then
    load("tqdm/4.64.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMDANALYSIS", root)
setenv("EBVERSIONMDANALYSIS", "2.4.2")
setenv("EBDEVELMDANALYSIS", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-MDAnalysis-2.4.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
setenv("EBEXTSLISTMDANALYSIS", "mrcfile-1.4.3,GridDataFormats-1.0.1,gsd-2.8.0,msgpack-1.0.5,mmtf-python-1.1.3,funcsigs-1.0.2,fasteners-0.18,MDAnalysis-2.4.2")
