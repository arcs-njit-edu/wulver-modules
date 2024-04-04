help([==[

Description
===========
Quickly plot and animate your CFD results exactly the way you want. Analyze complex solutions,
arrange multiple layouts, and communicate your results with professional images and animations.


More information
================
 - Homepage: http://www.tecplot.com/products/tecplot-360/
]==])

whatis([==[Description: Quickly plot and animate your CFD results exactly the way you want. Analyze complex solutions,
arrange multiple layouts, and communicate your results with professional images and animations.]==])
whatis([==[Homepage: http://www.tecplot.com/products/tecplot-360/]==])
whatis([==[URL: http://www.tecplot.com/products/tecplot-360/]==])

local root = "/apps/easybuild/software/tecplot360ex/2022R2"

conflict("tecplot360ex")

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTTECPLOT360EX", root)
setenv("EBVERSIONTECPLOT360EX", "2022R2")
setenv("EBDEVELTECPLOT360EX", pathJoin(root, "easybuild/Core-tecplot360ex-2022R2-easybuild-devel"))

prepend_path("PATH", pathJoin(root, "360ex_2022r2/bin"))
prepend_path("PATH", root)
-- Built with EasyBuild version 4.7.1
