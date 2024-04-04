help([==[

Description
===========
JSON for Modern C++


More information
================
 - Homepage: https://github.com/nlohmann/json
]==])

whatis([==[Description: JSON for Modern C++]==])
whatis([==[Homepage: https://github.com/nlohmann/json]==])
whatis([==[URL: https://github.com/nlohmann/json]==])

local root = "/apps/easybuild/software/nlohmann_json/3.11.2-GCCcore-12.2.0"

conflict("nlohmann_json")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "share/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNLOHMANN_JSON", root)
setenv("EBVERSIONNLOHMANN_JSON", "3.11.2")
setenv("EBDEVELNLOHMANN_JSON", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-nlohmann_json-3.11.2-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
