help([==[

Description
===========
Intel MPI Library, compatible with MPICH ABI


More information
================
 - Homepage: https://software.intel.com/content/www/us/en/develop/tools/mpi-library.html
]==])

whatis([==[Description: Intel MPI Library, compatible with MPICH ABI]==])
whatis([==[Homepage: https://software.intel.com/content/www/us/en/develop/tools/mpi-library.html]==])
whatis([==[URL: https://software.intel.com/content/www/us/en/develop/tools/mpi-library.html]==])

local root = "/apps/easybuild/software/impi/2021.6.0-intel-compilers-2022.1.0"

conflict("impi")

if not ( isloaded("UCX/1.12.1") ) then
    load("UCX/1.12.1")
end
prepend_path("MODULEPATH", "/apps/easybuild/modules/all/MPI/intel/2022.1.0/impi/2021.6.0")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "mpi/2021.6.0/include"))
prepend_path("FI_PROVIDER_PATH", pathJoin(root, "mpi/2021.6.0/libfabric/lib/prov"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "mpi/2021.6.0/lib"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "mpi/2021.6.0/lib/release"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "mpi/2021.6.0/libfabric/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "mpi/2021.6.0/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "mpi/2021.6.0/lib/release"))
prepend_path("LIBRARY_PATH", pathJoin(root, "mpi/2021.6.0/libfabric/lib"))
prepend_path("MANPATH", pathJoin(root, "mpi/2021.6.0/man"))
prepend_path("PATH", pathJoin(root, "mpi/2021.6.0/bin"))
prepend_path("PATH", pathJoin(root, "mpi/2021.6.0/libfabric/bin"))
setenv("EBROOTIMPI", root)
setenv("EBVERSIONIMPI", "2021.6.0")
setenv("EBDEVELIMPI", pathJoin(root, "easybuild/Compiler-intel-2022.1.0-impi-2021.6.0-easybuild-devel"))

setenv("I_MPI_ROOT", "/apps/easybuild/software/impi/2021.6.0-intel-compilers-2022.1.0/mpi/2021.6.0")
setenv("UCX_TLS", "all")
-- Built with EasyBuild version 4.7.1
