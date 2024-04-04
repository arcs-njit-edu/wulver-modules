help([==[

Description
===========
Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.


More information
================
 - Homepage: https://gforge.inria.fr/projects/scotch/
]==])

whatis([==[Description: Software package and libraries for sequential and parallel graph partitioning,
static mapping, and sparse matrix block ordering, and sequential mesh and hypergraph partitioning.]==])
whatis([==[Homepage: https://gforge.inria.fr/projects/scotch/]==])
whatis([==[URL: https://gforge.inria.fr/projects/scotch/]==])

local root = "/apps/easybuild/software/SCOTCH/6.1.2-gompi-2021b"

conflict("SCOTCH")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTSCOTCH", root)
setenv("EBVERSIONSCOTCH", "6.1.2")
setenv("EBDEVELSCOTCH", pathJoin(root, "easybuild/MPI-GCC-11.2.0-OpenMPI-4.1.1-SCOTCH-6.1.2-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
