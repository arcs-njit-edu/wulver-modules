help([==[

Description
===========
Boost provides free peer-reviewed portable C++ source libraries.


More information
================
 - Homepage: https://www.boost.org/
]==])

whatis([==[Description: Boost provides free peer-reviewed portable C++ source libraries.]==])
whatis([==[Homepage: https://www.boost.org/]==])
whatis([==[URL: https://www.boost.org/]==])

local root = "/apps/easybuild/software/Boost.MPI/1.77.0-gompi-2021b"

conflict("Boost.MPI")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("zstd/1.5.0") ) then
    load("zstd/1.5.0")
end

if not ( isloaded("ICU/69.1") ) then
    load("ICU/69.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOSTMPI", root)
setenv("EBVERSIONBOOSTMPI", "1.77.0")
setenv("EBDEVELBOOSTMPI", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-Boost.MPI-1.77.0-easybuild-devel"))

setenv("BOOST_ROOT", "/apps/easybuild/software/Boost.MPI/1.77.0-gompi-2021b")
-- Built with EasyBuild version 4.7.1
