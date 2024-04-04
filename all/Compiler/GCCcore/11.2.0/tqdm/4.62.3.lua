help([==[

Description
===========
A fast, extensible progress bar for Python and CLI


More information
================
 - Homepage: https://github.com/tqdm/tqdm
]==])

whatis([==[Description: A fast, extensible progress bar for Python and CLI]==])
whatis([==[Homepage: https://github.com/tqdm/tqdm]==])
whatis([==[URL: https://github.com/tqdm/tqdm]==])

local root = "/apps/easybuild/software/tqdm/4.62.3-GCCcore-11.2.0"

conflict("tqdm")

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTTQDM", root)
setenv("EBVERSIONTQDM", "4.62.3")
setenv("EBDEVELTQDM", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-tqdm-4.62.3-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
