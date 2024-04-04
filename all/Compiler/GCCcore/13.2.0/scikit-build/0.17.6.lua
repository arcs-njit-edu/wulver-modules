help([==[

Description
===========
Scikit-Build, or skbuild, is an improved build system generator
for CPython C/C++/Fortran/Cython extensions.


More information
================
 - Homepage: https://scikit-build.readthedocs.io/en/latest


Included extensions
===================
distro-1.8.0, packaging-23.1, scikit_build-0.17.6
]==])

whatis([==[Description: Scikit-Build, or skbuild, is an improved build system generator
for CPython C/C++/Fortran/Cython extensions.]==])
whatis([==[Homepage: https://scikit-build.readthedocs.io/en/latest]==])
whatis([==[URL: https://scikit-build.readthedocs.io/en/latest]==])
whatis([==[Extensions: distro-1.8.0, packaging-23.1, scikit_build-0.17.6]==])

local root = "/apps/easybuild/software/scikit-build/0.17.6-GCCcore-13.2.0"

conflict("scikit-build")

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCIKITMINBUILD", root)
setenv("EBVERSIONSCIKITMINBUILD", "0.17.6")
setenv("EBDEVELSCIKITMINBUILD", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-scikit-build-0.17.6-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTSCIKITMINBUILD", "packaging-23.1,distro-1.8.0,scikit_build-0.17.6")
