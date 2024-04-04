help([==[

Description
===========
Graphite is a "smart font" system developed specifically to
 handle the complexities of lesser-known languages of the world.


More information
================
 - Homepage: https://scripts.sil.org/cms/scripts/page.php?site_id=projects&item_id=graphite_home
]==])

whatis([==[Description: Graphite is a "smart font" system developed specifically to
 handle the complexities of lesser-known languages of the world.]==])
whatis([==[Homepage: https://scripts.sil.org/cms/scripts/page.php?site_id=projects&item_id=graphite_home]==])
whatis([==[URL: https://scripts.sil.org/cms/scripts/page.php?site_id=projects&item_id=graphite_home]==])

local root = "/apps/easybuild/software/graphite2/1.3.14-GCCcore-11.2.0"

conflict("graphite2")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGRAPHITE2", root)
setenv("EBVERSIONGRAPHITE2", "1.3.14")
setenv("EBDEVELGRAPHITE2", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-graphite2-1.3.14-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
