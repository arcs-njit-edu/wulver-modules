help([==[

Description
===========
C++ library implementing the Voronoi integration as well as the compressed bqb
file format. The present version of libvori is a very early development
version, which is hard-coded to work with the CP2k program package.


More information
================
 - Homepage: https://brehm-research.de/libvori.php
]==])

whatis([==[Description: C++ library implementing the Voronoi integration as well as the compressed bqb
file format. The present version of libvori is a very early development
version, which is hard-coded to work with the CP2k program package.]==])
whatis([==[Homepage: https://brehm-research.de/libvori.php]==])
whatis([==[URL: https://brehm-research.de/libvori.php]==])

local root = "/apps/easybuild/software/libvori/220621-GCCcore-12.2.0"

conflict("libvori")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTLIBVORI", root)
setenv("EBVERSIONLIBVORI", "220621")
setenv("EBDEVELLIBVORI", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-libvori-220621-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
