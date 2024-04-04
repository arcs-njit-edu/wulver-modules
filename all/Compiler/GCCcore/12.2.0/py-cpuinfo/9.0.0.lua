help([==[

Description
===========
py-cpuinfo gets CPU info with pure Python.


More information
================
 - Homepage: https://github.com/workhorsy/py-cpuinfo
]==])

whatis([==[Description: py-cpuinfo gets CPU info with pure Python.]==])
whatis([==[Homepage: https://github.com/workhorsy/py-cpuinfo]==])
whatis([==[URL: https://github.com/workhorsy/py-cpuinfo]==])

local root = "/apps/easybuild/software/py-cpuinfo/9.0.0-GCCcore-12.2.0"

conflict("py-cpuinfo")

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPYMINCPUINFO", root)
setenv("EBVERSIONPYMINCPUINFO", "9.0.0")
setenv("EBDEVELPYMINCPUINFO", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-py-cpuinfo-9.0.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
