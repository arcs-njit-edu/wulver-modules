help([==[

Description
===========
JSON-C implements a reference counting object model that allows you to easily construct JSON objects
 in C, output them as JSON formatted strings and parse JSON formatted strings back into the C representation of JSON
objects.


More information
================
 - Homepage: https://github.com/json-c/json-c
]==])

whatis([==[Description: JSON-C implements a reference counting object model that allows you to easily construct JSON objects
 in C, output them as JSON formatted strings and parse JSON formatted strings back into the C representation of JSON
objects.]==])
whatis([==[Homepage: https://github.com/json-c/json-c]==])
whatis([==[URL: https://github.com/json-c/json-c]==])

local root = "/apps/easybuild/software/json-c/0.16-GCCcore-12.2.0"

conflict("json-c")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTJSONMINC", root)
setenv("EBVERSIONJSONMINC", "0.16")
setenv("EBDEVELJSONMINC", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-json-c-0.16-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
