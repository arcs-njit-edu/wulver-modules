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
GridDataFormats-0.6.0, gsd-2.5.1, MDAnalysis-2.0.0, mmtf-python-1.1.2,
msgpack-1.0.3
]==])

whatis([==[Description: MDAnalysis is an object-oriented Python library to analyze trajectories from molecular dynamics (MD)
simulations in many popular formats.]==])
whatis([==[Homepage: https://www.mdanalysis.org/]==])
whatis([==[URL: https://www.mdanalysis.org/]==])
whatis([==[Extensions: GridDataFormats-0.6.0, gsd-2.5.1, MDAnalysis-2.0.0, mmtf-python-1.1.2, msgpack-1.0.3]==])

local root = "/apps/easybuild/software/MDAnalysis/2.0.0-foss-2021b"

conflict("MDAnalysis")

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

if not ( isloaded("SciPy-bundle/2021.10") ) then
    load("SciPy-bundle/2021.10")
end

if not ( isloaded("matplotlib/3.4.3") ) then
    load("matplotlib/3.4.3")
end

if not ( isloaded("Biopython/1.79") ) then
    load("Biopython/1.79")
end

if not ( isloaded("networkx/2.6.3") ) then
    load("networkx/2.6.3")
end

if not ( isloaded("tqdm/4.62.3") ) then
    load("tqdm/4.62.3")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMDANALYSIS", root)
setenv("EBVERSIONMDANALYSIS", "2.0.0")
setenv("EBDEVELMDANALYSIS", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-MDAnalysis-2.0.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
setenv("EBEXTSLISTMDANALYSIS", "GridDataFormats-0.6.0,gsd-2.5.1,msgpack-1.0.3,mmtf-python-1.1.2,MDAnalysis-2.0.0")
