help([==[

Description
===========
Opus is a totally open, royalty-free, highly versatile audio codec. Opus is unmatched for interactive
 speech and music transmission over the Internet, but is also intended for storage and streaming applications. It is
 standardized by the Internet Engineering Task Force (IETF) as RFC 6716 which incorporated technology from Skype’s
 SILK codec and Xiph.Org’s CELT codec.


More information
================
 - Homepage: https://www.opus-codec.org/
]==])

whatis([==[Description: Opus is a totally open, royalty-free, highly versatile audio codec. Opus is unmatched for interactive
 speech and music transmission over the Internet, but is also intended for storage and streaming applications. It is
 standardized by the Internet Engineering Task Force (IETF) as RFC 6716 which incorporated technology from Skype’s
 SILK codec and Xiph.Org’s CELT codec.]==])
whatis([==[Homepage: https://www.opus-codec.org/]==])
whatis([==[URL: https://www.opus-codec.org/]==])

local root = "/apps/easybuild/software/libopus/1.3.1-GCCcore-12.2.0"

conflict("libopus")

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBOPUS", root)
setenv("EBVERSIONLIBOPUS", "1.3.1")
setenv("EBDEVELLIBOPUS", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-libopus-1.3.1-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
