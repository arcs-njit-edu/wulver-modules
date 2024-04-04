help([==[

Description
===========
EasyBuild is a software build and installation framework
 written in Python that allows you to install software in a structured,
 repeatable and robust way.


More information
================
 - Homepage: https://easybuilders.github.io/easybuild
]==])

whatis([==[Description: EasyBuild is a software build and installation framework
 written in Python that allows you to install software in a structured,
 repeatable and robust way.]==])
whatis([==[Homepage: https://easybuilders.github.io/easybuild]==])
whatis([==[URL: https://easybuilders.github.io/easybuild]==])

local root = "/apps/easybuild/software/EasyBuild/4.9.0"

conflict("EasyBuild")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTEASYBUILD", root)
setenv("EBVERSIONEASYBUILD", "4.9.0")
setenv("EBDEVELEASYBUILD", pathJoin(root, "easybuild/Core-EasyBuild-4.9.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.6/site-packages"))
setenv("EB_INSTALLPYTHON", "/usr/bin/python")
-- Built with EasyBuild version 4.8.2
