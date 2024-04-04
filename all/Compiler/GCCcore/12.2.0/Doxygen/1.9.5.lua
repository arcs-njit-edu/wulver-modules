help([==[

Description
===========
Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.


More information
================
 - Homepage: https://www.doxygen.org
]==])

whatis([==[Description: 
 Doxygen is a documentation system for C++, C, Java, Objective-C, Python,
 IDL (Corba and Microsoft flavors), Fortran, VHDL, PHP, C#, and to some
 extent D.
]==])
whatis([==[Homepage: https://www.doxygen.org]==])
whatis([==[URL: https://www.doxygen.org]==])

local root = "/apps/easybuild/software/Doxygen/1.9.5-GCCcore-12.2.0"

conflict("Doxygen")

if not ( isloaded("libiconv/1.17") ) then
    load("libiconv/1.17")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTDOXYGEN", root)
setenv("EBVERSIONDOXYGEN", "1.9.5")
setenv("EBDEVELDOXYGEN", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Doxygen-1.9.5-easybuild-devel"))

-- Built with EasyBuild version 4.7.1