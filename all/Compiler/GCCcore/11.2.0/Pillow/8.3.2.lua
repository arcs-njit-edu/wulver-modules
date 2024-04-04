help([==[

Description
===========
Pillow is the 'friendly PIL fork' by Alex Clark and Contributors.
 PIL is the Python Imaging Library by Fredrik Lundh and Contributors.


More information
================
 - Homepage: https://pillow.readthedocs.org/
]==])

whatis([==[Description: Pillow is the 'friendly PIL fork' by Alex Clark and Contributors.
 PIL is the Python Imaging Library by Fredrik Lundh and Contributors.]==])
whatis([==[Homepage: https://pillow.readthedocs.org/]==])
whatis([==[URL: https://pillow.readthedocs.org/]==])

local root = "/apps/easybuild/software/Pillow/8.3.2-GCCcore-11.2.0"

conflict("Pillow")

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

if not ( isloaded("libjpeg-turbo/2.0.6") ) then
    load("libjpeg-turbo/2.0.6")
end

if not ( isloaded("libpng/1.6.37") ) then
    load("libpng/1.6.37")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end

if not ( isloaded("LibTIFF/4.3.0") ) then
    load("LibTIFF/4.3.0")
end

if not ( isloaded("freetype/2.11.0") ) then
    load("freetype/2.11.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPILLOW", root)
setenv("EBVERSIONPILLOW", "8.3.2")
setenv("EBDEVELPILLOW", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-Pillow-8.3.2-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
-- Built with EasyBuild version 4.7.1
