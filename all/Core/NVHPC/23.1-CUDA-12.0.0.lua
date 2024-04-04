help([==[

Description
===========
C, C++ and Fortran compilers included with the NVIDIA HPC SDK (previously: PGI)


More information
================
 - Homepage: https://developer.nvidia.com/hpc-sdk/
]==])

whatis([==[Description: C, C++ and Fortran compilers included with the NVIDIA HPC SDK (previously: PGI)]==])
whatis([==[Homepage: https://developer.nvidia.com/hpc-sdk/]==])
whatis([==[URL: https://developer.nvidia.com/hpc-sdk/]==])

local root = "/apps/easybuild/software/NVHPC/23.1-CUDA-12.0.0"

conflict("NVHPC")

if not ( isloaded("GCCcore/12.2.0") ) then
    load("GCCcore/12.2.0")
end

if not ( isloaded("binutils/2.39") ) then
    load("binutils/2.39")
end

if not ( isloaded("numactl/2.0.16") ) then
    load("numactl/2.0.16")
end

if not ( isloaded("CUDA/12.0.0") ) then
    load("CUDA/12.0.0")
end
prepend_path("MODULEPATH", "/apps/easybuild/modules/all/Compiler/NVHPC/23.1-CUDA-12.0.0")

prepend_path("CMAKE_PREFIX_PATH", pathJoin(root, "Linux_x86_64/23.1/compilers/"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "Linux_x86_64/23.1/compilers/lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "Linux_x86_64/23.1/compilers/lib"))
prepend_path("MANPATH", pathJoin(root, "Linux_x86_64/23.1/compilers/man"))
prepend_path("PATH", pathJoin(root, "Linux_x86_64/23.1/compilers/bin"))
prepend_path("PATH", pathJoin(root, "Linux_x86_64/23.1/comm_libs/mpi/bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "Linux_x86_64/23.1/compilers/share"))
setenv("EBROOTNVHPC", root)
setenv("EBVERSIONNVHPC", "23.1")
setenv("EBDEVELNVHPC", pathJoin(root, "easybuild/Core-NVHPC-23.1-CUDA-12.0.0-easybuild-devel"))

prepend_path("PATH", root)
setenv("NVHPC", "/apps/easybuild/software/NVHPC/23.1-CUDA-12.0.0")
setenv("NVHPC_CUDA_HOME", "/apps/easybuild/software/CUDA/12.0.0")
-- Built with EasyBuild version 4.7.1
