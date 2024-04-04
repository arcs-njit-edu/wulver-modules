help([==[

Description
===========
Efficient phylogenomic software by maximum likelihood


More information
================
 - Homepage: http://www.iqtree.org/
]==])

whatis([==[Description: Efficient phylogenomic software by maximum likelihood]==])
whatis([==[Homepage: http://www.iqtree.org/]==])
whatis([==[URL: http://www.iqtree.org/]==])

local root = "/apps/easybuild/software/IQ-TREE/2.2.2.6-gompi-2022b"

conflict("IQ-TREE")

if not ( isloaded("Boost/1.81.0") ) then
    load("Boost/1.81.0")
end

if not ( isloaded("LSD2/2.4.1") ) then
    load("LSD2/2.4.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTIQMINTREE", root)
setenv("EBVERSIONIQMINTREE", "2.2.2.6")
setenv("EBDEVELIQMINTREE", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-IQ-TREE-2.2.2.6-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
