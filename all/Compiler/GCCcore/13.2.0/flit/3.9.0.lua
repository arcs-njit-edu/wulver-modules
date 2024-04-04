help([==[

Description
===========
A simple packaging tool for simple packages.


More information
================
 - Homepage: https://github.com/pypa/flit


Included extensions
===================
certifi-2023.7.22, charset-normalizer-3.3.1, docutils-0.20.1, flit-3.9.0,
flit_scm-1.7.0, idna-3.4, packaging-23.2, requests-2.31.0, setuptools-
scm-8.0.4, tomli_w-1.0.0, typing_extensions-4.8.0, urllib3-2.0.7
]==])

whatis([==[Description: A simple packaging tool for simple packages.]==])
whatis([==[Homepage: https://github.com/pypa/flit]==])
whatis([==[URL: https://github.com/pypa/flit]==])
whatis([==[Extensions: certifi-2023.7.22, charset-normalizer-3.3.1, docutils-0.20.1, flit-3.9.0, flit_scm-1.7.0, idna-3.4, packaging-23.2, requests-2.31.0, setuptools-scm-8.0.4, tomli_w-1.0.0, typing_extensions-4.8.0, urllib3-2.0.7]==])

local root = "/apps/easybuild/software/flit/3.9.0-GCCcore-13.2.0"

conflict("flit")

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTFLIT", root)
setenv("EBVERSIONFLIT", "3.9.0")
setenv("EBDEVELFLIT", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-flit-3.9.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTFLIT", "idna-3.4,certifi-2023.7.22,urllib3-2.0.7,charset-normalizer-3.3.1,packaging-23.2,setuptools-scm-8.0.4,typing_extensions-4.8.0,flit_scm-1.7.0,requests-2.31.0,docutils-0.20.1,tomli_w-1.0.0,flit-3.9.0")
