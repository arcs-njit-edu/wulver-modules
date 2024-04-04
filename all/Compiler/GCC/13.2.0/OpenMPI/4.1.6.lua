help([==[

Description
===========
The Open MPI Project is an open source MPI-3 implementation.


More information
================
 - Homepage: https://www.open-mpi.org/
]==])

whatis([==[Description: The Open MPI Project is an open source MPI-3 implementation.]==])
whatis([==[Homepage: https://www.open-mpi.org/]==])
whatis([==[URL: https://www.open-mpi.org/]==])

local root = "/apps/easybuild/software/OpenMPI/4.1.6-GCC-13.2.0"

conflict("OpenMPI")

if not ( isloaded("hwloc/2.9.2") ) then
    load("hwloc/2.9.2")
end

if not ( isloaded("libevent/2.1.12") ) then
    load("libevent/2.1.12")
end

if not ( isloaded("UCX/1.15.0") ) then
    load("UCX/1.15.0")
end

if not ( isloaded("libfabric/1.19.0") ) then
    load("libfabric/1.19.0")
end

if not ( isloaded("PMIx/4.2.6") ) then
    load("PMIx/4.2.6")
end

if not ( isloaded("UCC/1.2.0") ) then
    load("UCC/1.2.0")
end
prepend_path("MODULEPATH", "/apps/easybuild/modules/all/MPI/GCC/13.2.0/OpenMPI/4.1.6")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTOPENMPI", root)
setenv("EBVERSIONOPENMPI", "4.1.6")
setenv("EBDEVELOPENMPI", pathJoin(root, "easybuild/Compiler-GCC-13.2.0-OpenMPI-4.1.6-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
