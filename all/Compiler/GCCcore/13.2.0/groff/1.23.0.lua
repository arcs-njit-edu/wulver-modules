help([==[

Description
===========
Groff (GNU troff) is a typesetting system that reads plain text mixed with formatting commands
 and produces formatted output.


More information
================
 - Homepage: https://www.gnu.org/software/groff
]==])

whatis([==[Description: Groff (GNU troff) is a typesetting system that reads plain text mixed with formatting commands
 and produces formatted output.]==])
whatis([==[Homepage: https://www.gnu.org/software/groff]==])
whatis([==[URL: https://www.gnu.org/software/groff]==])

local root = "/apps/easybuild/software/groff/1.23.0-GCCcore-13.2.0"

conflict("groff")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGROFF", root)
setenv("EBVERSIONGROFF", "1.23.0")
setenv("EBDEVELGROFF", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-groff-1.23.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
