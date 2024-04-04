help([==[

Description
===========
ParMETIS is an MPI-based parallel library that implements a variety of algorithms for partitioning
 unstructured graphs, meshes, and for computing fill-reducing orderings of sparse matrices. ParMETIS extends the
 functionality provided by METIS and includes routines that are especially suited for parallel AMR computations and
 large scale numerical simulations. The algorithms implemented in ParMETIS are based on the parallel multilevel k-way
 graph-partitioning, adaptive repartitioning, and parallel multi-constrained partitioning schemes.


More information
================
 - Homepage: http://glaros.dtc.umn.edu/gkhome/metis/parmetis/overview
]==])

whatis([==[Description: ParMETIS is an MPI-based parallel library that implements a variety of algorithms for partitioning
 unstructured graphs, meshes, and for computing fill-reducing orderings of sparse matrices. ParMETIS extends the
 functionality provided by METIS and includes routines that are especially suited for parallel AMR computations and
 large scale numerical simulations. The algorithms implemented in ParMETIS are based on the parallel multilevel k-way
 graph-partitioning, adaptive repartitioning, and parallel multi-constrained partitioning schemes.]==])
whatis([==[Homepage: http://glaros.dtc.umn.edu/gkhome/metis/parmetis/overview]==])
whatis([==[URL: http://glaros.dtc.umn.edu/gkhome/metis/parmetis/overview]==])

local root = "/apps/easybuild/software/ParMETIS/4.0.3-gompi-2022b"

conflict("ParMETIS")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPARMETIS", root)
setenv("EBVERSIONPARMETIS", "4.0.3")
setenv("EBDEVELPARMETIS", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-ParMETIS-4.0.3-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
