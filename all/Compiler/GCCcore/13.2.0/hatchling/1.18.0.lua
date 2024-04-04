help([==[

Description
===========
Extensible, standards compliant build backend used by Hatch,
a modern, extensible Python project manager.


More information
================
 - Homepage: https://hatch.pypa.io


Included extensions
===================
editables-0.5, hatch_fancy_pypi_readme-23.1.0, hatch_vcs-0.3.0,
hatchling-1.18.0, packaging-23.2, pathspec-0.11.2, pluggy-1.3.0, setuptools-
scm-8.0.4, tomli-2.0.1, trove_classifiers-2023.10.18, typing_extensions-4.8.0
]==])

whatis([==[Description: Extensible, standards compliant build backend used by Hatch,
a modern, extensible Python project manager.]==])
whatis([==[Homepage: https://hatch.pypa.io]==])
whatis([==[URL: https://hatch.pypa.io]==])
whatis([==[Extensions: editables-0.5, hatch_fancy_pypi_readme-23.1.0, hatch_vcs-0.3.0, hatchling-1.18.0, packaging-23.2, pathspec-0.11.2, pluggy-1.3.0, setuptools-scm-8.0.4, tomli-2.0.1, trove_classifiers-2023.10.18, typing_extensions-4.8.0]==])

local root = "/apps/easybuild/software/hatchling/1.18.0-GCCcore-13.2.0"

conflict("hatchling")

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHATCHLING", root)
setenv("EBVERSIONHATCHLING", "1.18.0")
setenv("EBDEVELHATCHLING", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-hatchling-1.18.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTHATCHLING", "tomli-2.0.1,packaging-23.2,setuptools-scm-8.0.4,typing_extensions-4.8.0,pathspec-0.11.2,pluggy-1.3.0,editables-0.5,trove_classifiers-2023.10.18,hatchling-1.18.0,hatch_vcs-0.3.0,hatch_fancy_pypi_readme-23.1.0")
