help([==[

Description
===========
Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.


More information
================
 - Homepage: https://www.mesa3d.org/
]==])

whatis([==[Description: Mesa is an open-source implementation of the OpenGL specification -
 a system for rendering interactive 3D graphics.]==])
whatis([==[Homepage: https://www.mesa3d.org/]==])
whatis([==[URL: https://www.mesa3d.org/]==])

local root = "/apps/easybuild/software/Mesa/22.2.4-GCCcore-12.2.0"

conflict("Mesa")

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

if not ( isloaded("zstd/1.5.2") ) then
    load("zstd/1.5.2")
end

if not ( isloaded("libdrm/2.4.114") ) then
    load("libdrm/2.4.114")
end

if not ( isloaded("libglvnd/1.6.0") ) then
    load("libglvnd/1.6.0")
end

if not ( isloaded("libunwind/1.6.2") ) then
    load("libunwind/1.6.2")
end

if not ( isloaded("LLVM/15.0.5") ) then
    load("LLVM/15.0.5")
end

if not ( isloaded("X11/20221110") ) then
    load("X11/20221110")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTMESA", root)
setenv("EBVERSIONMESA", "22.2.4")
setenv("EBDEVELMESA", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Mesa-22.2.4-easybuild-devel"))

prepend_path("__EGL_VENDOR_LIBRARY_DIRS", pathJoin(root, "share/glvnd/egl_vendor.d"))
-- Built with EasyBuild version 4.7.1
