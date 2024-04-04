help([==[

Description
===========
Open Knowledgebase of Interatomic Models.

KIM is an API and OpenKIM is a collection of interatomic models (potentials) for
atomistic simulations.  This is a library that can be used by simulation programs
to get access to the models in the OpenKIM database.

This EasyBuild only installs the API, the models can be installed with the
package openkim-models, or the user can install them manually by running
    kim-api-collections-management install user MODELNAME
or
    kim-api-collections-management install user OpenKIM
to install them all.


More information
================
 - Homepage: https://openkim.org/
]==])

whatis([==[Description: Open Knowledgebase of Interatomic Models.

KIM is an API and OpenKIM is a collection of interatomic models (potentials) for
atomistic simulations.  This is a library that can be used by simulation programs
to get access to the models in the OpenKIM database.

This EasyBuild only installs the API, the models can be installed with the
package openkim-models, or the user can install them manually by running
    kim-api-collections-management install user MODELNAME
or
    kim-api-collections-management install user OpenKIM
to install them all.
 ]==])
whatis([==[Homepage: https://openkim.org/]==])
whatis([==[URL: https://openkim.org/]==])

local root = "/apps/easybuild/software/kim-api/2.3.0-GCCcore-11.2.0"

conflict("kim-api")

if not ( isloaded("CMake/3.22.1") ) then
    load("CMake/3.22.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTKIMMINAPI", root)
setenv("EBVERSIONKIMMINAPI", "2.3.0")
setenv("EBDEVELKIMMINAPI", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-kim-api-2.3.0-easybuild-devel"))

setenv("KIM_API_CMAKE_PREFIX_DIR", "/apps/easybuild/software/kim-api/2.3.0-GCCcore-11.2.0/lib64")
-- Built with EasyBuild version 4.7.1
