help([==[

Description
===========
Biopython is a set of freely available tools for biological
 computation written in Python by an international team of developers. It is
 a distributed collaborative effort to develop Python libraries and
 applications which address the needs of current and future work in
 bioinformatics.


More information
================
 - Homepage: https://www.biopython.org
]==])

whatis([==[Description: Biopython is a set of freely available tools for biological
 computation written in Python by an international team of developers. It is
 a distributed collaborative effort to develop Python libraries and
 applications which address the needs of current and future work in
 bioinformatics. ]==])
whatis([==[Homepage: https://www.biopython.org]==])
whatis([==[URL: https://www.biopython.org]==])

local root = "/apps/easybuild/software/Biopython/1.81-foss-2022b"

conflict("Biopython")

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

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTBIOPYTHON", root)
setenv("EBVERSIONBIOPYTHON", "1.81")
setenv("EBDEVELBIOPYTHON", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-Biopython-1.81-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
