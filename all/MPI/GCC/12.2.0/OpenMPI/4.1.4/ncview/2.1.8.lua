help([==[

Description
===========
Ncview is a visual browser for netCDF format files. 
Typically you would use ncview to get a quick and easy, push-button 
look at your netCDF files. You can view simple movies of the data, 
view along various dimensions, take a look at the actual data values, 
change color maps, invert the data, etc.


More information
================
 - Homepage: http://meteora.ucsd.edu/~pierce/ncview_home_page.html
]==])

whatis([==[Description: Ncview is a visual browser for netCDF format files. 
Typically you would use ncview to get a quick and easy, push-button 
look at your netCDF files. You can view simple movies of the data, 
view along various dimensions, take a look at the actual data values, 
change color maps, invert the data, etc.]==])
whatis([==[Homepage: http://meteora.ucsd.edu/~pierce/ncview_home_page.html]==])
whatis([==[URL: http://meteora.ucsd.edu/~pierce/ncview_home_page.html]==])

local root = "/apps/easybuild/software/ncview/2.1.8-gompi-2022b"

conflict("ncview")

if not ( isloaded("netCDF/4.9.0") ) then
    load("netCDF/4.9.0")
end

if not ( isloaded("netCDF-Fortran/4.6.0") ) then
    load("netCDF-Fortran/4.6.0")
end

if not ( isloaded("UDUNITS/2.2.28") ) then
    load("UDUNITS/2.2.28")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("libpng/1.6.38") ) then
    load("libpng/1.6.38")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTNCVIEW", root)
setenv("EBVERSIONNCVIEW", "2.1.8")
setenv("EBDEVELNCVIEW", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-ncview-2.1.8-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
