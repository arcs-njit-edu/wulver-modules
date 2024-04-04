help([==[

Description
===========
The libevent API provides a mechanism to execute a callback function when
 a specific event occurs on a file descriptor or after a timeout has been
 reached.  Furthermore, libevent also support callbacks due to signals or
 regular timeouts.


More information
================
 - Homepage: https://libevent.org/
]==])

whatis([==[Description: 
 The libevent API provides a mechanism to execute a callback function when
 a specific event occurs on a file descriptor or after a timeout has been
 reached.  Furthermore, libevent also support callbacks due to signals or
 regular timeouts.
]==])
whatis([==[Homepage: https://libevent.org/]==])
whatis([==[URL: https://libevent.org/]==])

local root = "/apps/easybuild/software/libevent/2.1.12-GCCcore-13.2.0"

conflict("libevent")

if not ( isloaded("zlib/1.2.13") ) then
    load("zlib/1.2.13")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBEVENT", root)
setenv("EBVERSIONLIBEVENT", "2.1.12")
setenv("EBDEVELLIBEVENT", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-libevent-2.1.12-easybuild-devel"))

-- Built with EasyBuild version 4.9.0
