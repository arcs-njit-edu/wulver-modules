help([==[

Description
===========
The goal of the CGAL Open Source Project is to provide easy access to efficient
 and reliable geometric algorithms in the form of a C++ library.


More information
================
 - Homepage: https://www.cgal.org/
]==])

whatis([==[Description: The goal of the CGAL Open Source Project is to provide easy access to efficient
 and reliable geometric algorithms in the form of a C++ library.]==])
whatis([==[Homepage: https://www.cgal.org/]==])
whatis([==[URL: https://www.cgal.org/]==])

local root = "/apps/easybuild/software/CGAL/4.14.3-gompi-2021b"

conflict("CGAL")

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

if not ( isloaded("Boost/1.77.0") ) then
    load("Boost/1.77.0")
end

if not ( isloaded("MPFR/4.1.0") ) then
    load("MPFR/4.1.0")
end

if not ( isloaded("GMP/6.2.1") ) then
    load("GMP/6.2.1")
end

if not ( isloaded("Mesa/21.1.7") ) then
    load("Mesa/21.1.7")
end

if not ( isloaded("libGLU/9.0.2") ) then
    load("libGLU/9.0.2")
end

if not ( isloaded("Qt5/5.15.2") ) then
    load("Qt5/5.15.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCGAL", root)
setenv("EBVERSIONCGAL", "4.14.3")
setenv("EBDEVELCGAL", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-CGAL-4.14.3-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
