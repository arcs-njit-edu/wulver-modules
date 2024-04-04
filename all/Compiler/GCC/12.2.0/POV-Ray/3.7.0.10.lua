help([==[

Description
===========
The Persistence of Vision Raytracer, or POV-Ray, is a ray tracing program
 which generates images from a text-based scene description, and is available for a variety
 of computer platforms. POV-Ray is a high-quality, Free Software tool for creating stunning
 three-dimensional graphics. The source code is available for those wanting to do their own ports.


More information
================
 - Homepage: https://www.povray.org/
]==])

whatis([==[Description: The Persistence of Vision Raytracer, or POV-Ray, is a ray tracing program
 which generates images from a text-based scene description, and is available for a variety
 of computer platforms. POV-Ray is a high-quality, Free Software tool for creating stunning
 three-dimensional graphics. The source code is available for those wanting to do their own ports.]==])
whatis([==[Homepage: https://www.povray.org/]==])
whatis([==[URL: https://www.povray.org/]==])

local root = "/apps/easybuild/software/POV-Ray/3.7.0.10-GCC-12.2.0"

conflict("POV-Ray")

if not ( isloaded("Boost/1.81.0") ) then
    load("Boost/1.81.0")
end

if not ( isloaded("libpng/1.6.38") ) then
    load("libpng/1.6.38")
end

if not ( isloaded("libjpeg-turbo/2.1.4") ) then
    load("libjpeg-turbo/2.1.4")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

if not ( isloaded("LibTIFF/4.4.0") ) then
    load("LibTIFF/4.4.0")
end

if not ( isloaded("SDL2/2.26.3") ) then
    load("SDL2/2.26.3")
end

if not ( isloaded("OpenEXR/3.1.5") ) then
    load("OpenEXR/3.1.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPOVMINRAY", root)
setenv("EBVERSIONPOVMINRAY", "3.7.0.10")
setenv("EBDEVELPOVMINRAY", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-POV-Ray-3.7.0.10-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
