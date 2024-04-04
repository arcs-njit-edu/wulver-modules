help([==[

Description
===========
The MATLAB Parallel Server Toolbox.


More information
================
 - Homepage: https://www.mathworks.com/help/matlab/matlab-engine-for-python.html
]==])

whatis([==[Description: The MATLAB Parallel Server Toolbox.]==])
whatis([==[Homepage: https://www.mathworks.com/help/matlab/matlab-engine-for-python.html]==])
whatis([==[URL: https://www.mathworks.com/help/matlab/matlab-engine-for-python.html]==])

local root = "/apps/easybuild/software/MATLAB/R2023a"

conflict("MATLAB")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTMATLAB", root)
setenv("EBVERSIONMATLAB", "R2023a")
setenv("EBDEVELMATLAB", pathJoin(root, "easybuild/Core-MATLAB-2023a-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "toolbox/parallel/bin"))
prepend_path("PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "runtime/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "bin/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "sys/os/glnxa64"))
setenv("_JAVA_OPTIONS", "-Xmx2048m")
-- Built with EasyBuild version 4.7.1
