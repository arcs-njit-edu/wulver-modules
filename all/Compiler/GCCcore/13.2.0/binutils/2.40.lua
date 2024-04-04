help([==[

Description
===========
binutils: GNU binary utilities


More information
================
 - Homepage: https://directory.fsf.org/project/binutils/
]==])

whatis([==[Description: binutils: GNU binary utilities]==])
whatis([==[Homepage: https://directory.fsf.org/project/binutils/]==])
whatis([==[URL: https://directory.fsf.org/project/binutils/]==])

local root = "/apps/easybuild/software/binutils/2.40-GCCcore-13.2.0"

conflict("binutils")

if not ( isloaded("zlib/1.2.13") ) then
    load("zlib/1.2.13")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTBINUTILS", root)
setenv("EBVERSIONBINUTILS", "2.40")
setenv("EBDEVELBINUTILS", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-binutils-2.40-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
