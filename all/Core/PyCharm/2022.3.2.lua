help([==[

Description
===========
PyCharm Community Edition: Python IDE for Professional Developers


More information
================
 - Homepage: https://www.jetbrains.com/pycharm/
]==])

whatis([==[Description: PyCharm Community Edition: Python IDE for Professional Developers]==])
whatis([==[Homepage: https://www.jetbrains.com/pycharm/]==])
whatis([==[URL: https://www.jetbrains.com/pycharm/]==])

local root = "/apps/easybuild/software/PyCharm/2022.3.2"

conflict("PyCharm")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYCHARM", root)
setenv("EBVERSIONPYCHARM", "2022.3.2")
setenv("EBDEVELPYCHARM", pathJoin(root, "easybuild/Core-PyCharm-2022.3.2-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
