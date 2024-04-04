help([==[

Description
===========
OpenCL and Cuda accelerated version of AutoDock. It leverages its embarrasingly
parallelizable LGA by processing ligand-receptor poses in parallel over
multiple compute units.
AutoDock is a suite of automated docking tools. It is designed to predict how
small molecules, such as substrates or drug candidates, bind to a receptor of
known 3D structure.


More information
================
 - Homepage: https://github.com/ccsb-scripps/AutoDock-GPU
]==])

whatis([==[Description: OpenCL and Cuda accelerated version of AutoDock. It leverages its embarrasingly
parallelizable LGA by processing ligand-receptor poses in parallel over
multiple compute units.
AutoDock is a suite of automated docking tools. It is designed to predict how
small molecules, such as substrates or drug candidates, bind to a receptor of
known 3D structure.]==])
whatis([==[Homepage: https://github.com/ccsb-scripps/AutoDock-GPU]==])
whatis([==[URL: https://github.com/ccsb-scripps/AutoDock-GPU]==])

local root = "/apps/easybuild/software/AutoDock-GPU/1.5.3-GCC-11.2.0-CUDA-11.4.1"

conflict("AutoDock-GPU")

if not ( isloaded("CUDA/11.4.1") ) then
    load("CUDA/11.4.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTAUTODOCKMINGPU", root)
setenv("EBVERSIONAUTODOCKMINGPU", "1.5.3")
setenv("EBDEVELAUTODOCKMINGPU", pathJoin(root, "easybuild/Compiler-GCC-11.2.0-AutoDock-GPU-1.5.3-CUDA-11.4.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
