help([==[

Description
===========
Libfabric is a core component of OFI. It is the library that defines and exports
the user-space API of OFI, and is typically the only software that applications
deal with directly. It works in conjunction with provider libraries, which are
often integrated directly into libfabric.


More information
================
 - Homepage: https://ofiwg.github.io/libfabric/
]==])

whatis([==[Description: 
Libfabric is a core component of OFI. It is the library that defines and exports
the user-space API of OFI, and is typically the only software that applications
deal with directly. It works in conjunction with provider libraries, which are
often integrated directly into libfabric.
]==])
whatis([==[Homepage: https://ofiwg.github.io/libfabric/]==])
whatis([==[URL: https://ofiwg.github.io/libfabric/]==])

local root = "/apps/easybuild/software/libfabric/1.19.0-GCCcore-13.2.0"

conflict("libfabric")

if not ( isloaded("numactl/2.0.16") ) then
    load("numactl/2.0.16")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLIBFABRIC", root)
setenv("EBVERSIONLIBFABRIC", "1.19.0")
setenv("EBDEVELLIBFABRIC", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-libfabric-1.19.0-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
