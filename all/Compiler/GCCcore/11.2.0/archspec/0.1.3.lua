help([==[

Description
===========
A library for detecting, labeling, and reasoning about microarchitectures


More information
================
 - Homepage: https://github.com/archspec/archspec
]==])

whatis([==[Description: A library for detecting, labeling, and reasoning about microarchitectures]==])
whatis([==[Homepage: https://github.com/archspec/archspec]==])
whatis([==[URL: https://github.com/archspec/archspec]==])

local root = "/apps/easybuild/software/archspec/0.1.3-GCCcore-11.2.0"

conflict("archspec")

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTARCHSPEC", root)
setenv("EBVERSIONARCHSPEC", "0.1.3")
setenv("EBDEVELARCHSPEC", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-archspec-0.1.3-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
