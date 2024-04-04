help([==[

Description
===========
Voro++ is a software library for carrying out three-dimensional computations of the Voronoi
tessellation. A distinguishing feature of the Voro++ library is that it carries out cell-based calculations,
computing the Voronoi cell for each particle individually. It is particularly well-suited for applications that
rely on cell-based statistics, where features of Voronoi cells (eg. volume, centroid, number of faces) can be used
to analyze a system of particles.


More information
================
 - Homepage: http://math.lbl.gov/voro++/
]==])

whatis([==[Description: Voro++ is a software library for carrying out three-dimensional computations of the Voronoi
tessellation. A distinguishing feature of the Voro++ library is that it carries out cell-based calculations,
computing the Voronoi cell for each particle individually. It is particularly well-suited for applications that
rely on cell-based statistics, where features of Voronoi cells (eg. volume, centroid, number of faces) can be used
to analyze a system of particles.]==])
whatis([==[Homepage: http://math.lbl.gov/voro++/]==])
whatis([==[URL: http://math.lbl.gov/voro++/]==])

local root = "/apps/easybuild/software/Voro++/0.4.6-GCCcore-11.2.0"

conflict("Voro++")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTVOROPLUSPLUS", root)
setenv("EBVERSIONVOROPLUSPLUS", "0.4.6")
setenv("EBDEVELVOROPLUSPLUS", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-Voro++-0.4.6-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
