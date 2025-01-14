help([==[

Description
===========
Node.js is a platform built on Chrome's JavaScript runtime
 for easily building fast, scalable network applications. Node.js uses an
 event-driven, non-blocking I/O model that makes it lightweight and efficient,
 perfect for data-intensive real-time applications that run across distributed devices.


More information
================
 - Homepage: https://nodejs.org
]==])

whatis([==[Description: Node.js is a platform built on Chrome's JavaScript runtime
 for easily building fast, scalable network applications. Node.js uses an
 event-driven, non-blocking I/O model that makes it lightweight and efficient,
 perfect for data-intensive real-time applications that run across distributed devices.]==])
whatis([==[Homepage: https://nodejs.org]==])
whatis([==[URL: https://nodejs.org]==])

local root = "/apps/easybuild/software/nodejs/14.17.6-GCCcore-11.2.0"

conflict("nodejs")

if not ( isloaded("ICU/69.1") ) then
    load("ICU/69.1")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNODEJS", root)
setenv("EBVERSIONNODEJS", "14.17.6")
setenv("EBDEVELNODEJS", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-nodejs-14.17.6-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
