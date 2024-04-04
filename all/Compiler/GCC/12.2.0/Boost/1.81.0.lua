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

local root = "/apps/easybuild/software/Boost/1.81.0-GCC-12.2.0"

conflict("Boost")

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("XZ/5.2.7") ) then
    load("XZ/5.2.7")
end

if not ( isloaded("zstd/1.5.2") ) then
    load("zstd/1.5.2")
end

if not ( isloaded("ICU/72.1") ) then
    load("ICU/72.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTBOOST", root)
setenv("EBVERSIONBOOST", "1.81.0")
setenv("EBDEVELBOOST", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-Boost-1.81.0-easybuild-devel"))

setenv("BOOST_ROOT", "/apps/easybuild/software/Boost/1.81.0-GCC-12.2.0")
-- Built with EasyBuild version 4.8.2
