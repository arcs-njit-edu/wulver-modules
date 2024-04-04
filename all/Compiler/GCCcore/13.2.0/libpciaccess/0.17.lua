help([==[

Description
===========
Generic PCI access library.


More information
================
 - Homepage: https://cgit.freedesktop.org/xorg/lib/libpciaccess/
]==])

whatis([==[Description: Generic PCI access library.]==])
whatis([==[Homepage: https://cgit.freedesktop.org/xorg/lib/libpciaccess/]==])
whatis([==[URL: https://cgit.freedesktop.org/xorg/lib/libpciaccess/]==])

local root = "/apps/easybuild/software/libpciaccess/0.17-GCCcore-13.2.0"

conflict("libpciaccess")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBPCIACCESS", root)
setenv("EBVERSIONLIBPCIACCESS", "0.17")
setenv("EBDEVELLIBPCIACCESS", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-libpciaccess-0.17-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
