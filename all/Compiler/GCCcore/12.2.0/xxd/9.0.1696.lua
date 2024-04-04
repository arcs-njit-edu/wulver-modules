help([==[

Description
===========
xxd is part of the VIM package and this will only install xxd, not vim!
xxd converts to/from hexdumps of binary files.


More information
================
 - Homepage: https://www.vim.org
]==])

whatis([==[Description: xxd is part of the VIM package and this will only install xxd, not vim!
xxd converts to/from hexdumps of binary files.]==])
whatis([==[Homepage: https://www.vim.org]==])
whatis([==[URL: https://www.vim.org]==])

local root = "/apps/easybuild/software/xxd/9.0.1696-GCCcore-12.2.0"

conflict("xxd")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTXXD", root)
setenv("EBVERSIONXXD", "9.0.1696")
setenv("EBDEVELXXD", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-xxd-9.0.1696-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
