help([==[

Description
===========
Boost.Python is a C++ library which enables seamless interoperability between C++
 and the Python programming language.


More information
================
 - Homepage: https://boostorg.github.io/python
]==])

whatis([==[Description: Boost.Python is a C++ library which enables seamless interoperability between C++
 and the Python programming language.]==])
whatis([==[Homepage: https://boostorg.github.io/python]==])
whatis([==[URL: https://boostorg.github.io/python]==])

local root = "/apps/easybuild/software/Boost.Python/1.77.0-GCC-11.2.0"

conflict("Boost.Python")

if not ( isloaded("Boost/1.77.0") ) then
    load("Boost/1.77.0")
end

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOSTPYTHON", root)
setenv("EBVERSIONBOOSTPYTHON", "1.77.0")
setenv("EBDEVELBOOSTPYTHON", pathJoin(root, "easybuild/Compiler-GCC-11.2.0-Boost.Python-1.77.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
