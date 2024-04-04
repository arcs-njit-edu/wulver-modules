help([==[

Description
===========
Avogadro is an advanced molecule editor and visualizer designed for cross-platform 
    use in computational chemistry, molecular modeling, bioinformatics, materials science, 
    and related areas.


More information
================
 - Homepage: https://two.avogadro.cc/index.html
]==])

whatis([==[Description: 
    Avogadro is an advanced molecule editor and visualizer designed for cross-platform 
    use in computational chemistry, molecular modeling, bioinformatics, materials science, 
    and related areas.
]==])
whatis([==[Homepage: https://two.avogadro.cc/index.html]==])
whatis([==[URL: https://two.avogadro.cc/index.html]==])

local root = "/apps/easybuild/software/Avogadro2/1.97.0-linux-x86_64"

conflict("Avogadro2")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTAVOGADRO2", root)
setenv("EBVERSIONAVOGADRO2", "1.97.0")
setenv("EBDEVELAVOGADRO2", pathJoin(root, "easybuild/Core-Avogadro2-1.97.0-linux-x86_64-easybuild-devel"))

prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.1
