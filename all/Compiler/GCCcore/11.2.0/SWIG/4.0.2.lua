help([==[

Description
===========
SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages.


More information
================
 - Homepage: http://www.swig.org/
]==])

whatis([==[Description: SWIG is a software development tool that connects programs written in C and C++ with
 a variety of high-level programming languages.]==])
whatis([==[Homepage: http://www.swig.org/]==])
whatis([==[URL: http://www.swig.org/]==])

local root = "/apps/easybuild/software/SWIG/4.0.2-GCCcore-11.2.0"

conflict("SWIG")

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("PCRE/8.45") ) then
    load("PCRE/8.45")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTSWIG", root)
setenv("EBVERSIONSWIG", "4.0.2")
setenv("EBDEVELSWIG", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-SWIG-4.0.2-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
