help([==[

Description
===========
GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.


More information
================
 - Homepage: (none)
]==])

whatis([==[Description: GNU Compiler Collection (GCC) based compiler toolchain,
 including OpenMPI for MPI support.]==])
whatis([==[Homepage: (none)]==])
whatis([==[URL: (none)]==])

local root = "/apps/easybuild/software/gompi/2023b"

conflict("gompi")

if not ( isloaded("GCC/13.2.0") ) then
    load("GCC/13.2.0")
end

if not ( isloaded("OpenMPI/4.1.6") ) then
    load("OpenMPI/4.1.6")
end

setenv("EBROOTGOMPI", root)
setenv("EBVERSIONGOMPI", "2023b")
setenv("EBDEVELGOMPI", pathJoin(root, "easybuild/Core-gompi-2023b-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
