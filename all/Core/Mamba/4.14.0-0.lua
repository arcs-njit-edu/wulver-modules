help([==[

Description
===========
Mamba is a fast, robust, and cross-platform package manager. It runs on Windows, OS X and Linux 
(ARM64 and PPC64LE included) and is fully compatible with conda packages and supports most of conda's commands.


More information
================
 - Homepage: https://mamba.readthedocs.io/
]==])

whatis([==[Description: Mamba is a fast, robust, and cross-platform package manager. It runs on Windows, OS X and Linux 
(ARM64 and PPC64LE included) and is fully compatible with conda packages and supports most of conda's commands.
]==])
whatis([==[Homepage: https://mamba.readthedocs.io/]==])
whatis([==[URL: https://mamba.readthedocs.io/]==])

local root = "/apps/easybuild/software/Mamba/4.14.0-0"

conflict("Mamba")

prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PATH", pathJoin(root, "sbin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
setenv("EBROOTMAMBA", root)
setenv("EBVERSIONMAMBA", "4.14.0-0")
setenv("EBDEVELMAMBA", pathJoin(root, "easybuild/Core-Mamba-4.14.0-0-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.1
