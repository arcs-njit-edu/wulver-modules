help([==[

Description
===========
Xvfb is an X server that can run on machines with no display hardware and no physical input devices.
 It emulates a dumb framebuffer using virtual memory.


More information
================
 - Homepage: https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml
]==])

whatis([==[Description: Xvfb is an X server that can run on machines with no display hardware and no physical input devices.
 It emulates a dumb framebuffer using virtual memory.]==])
whatis([==[Homepage: https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml]==])
whatis([==[URL: https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml]==])

local root = "/apps/easybuild/software/Xvfb/1.20.13-GCCcore-11.2.0"

conflict("Xvfb")

if not ( isloaded("X11/20210802") ) then
    load("X11/20210802")
end

if not ( isloaded("pixman/0.40.0") ) then
    load("pixman/0.40.0")
end

if not ( isloaded("libdrm/2.4.107") ) then
    load("libdrm/2.4.107")
end

if not ( isloaded("Mesa/21.1.7") ) then
    load("Mesa/21.1.7")
end

if not ( isloaded("nettle/3.7.3") ) then
    load("nettle/3.7.3")
end

if not ( isloaded("libunwind/1.5.0") ) then
    load("libunwind/1.5.0")
end

if not ( isloaded("XZ/5.2.5") ) then
    load("XZ/5.2.5")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTXVFB", root)
setenv("EBVERSIONXVFB", "1.20.13")
setenv("EBDEVELXVFB", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-Xvfb-1.20.13-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
