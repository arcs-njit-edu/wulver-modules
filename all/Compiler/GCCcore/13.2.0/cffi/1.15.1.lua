help([==[

Description
===========
C Foreign Function Interface for Python. Interact with almost any C code from
Python, based on C-like declarations that you can often copy-paste from header
files or documentation.


More information
================
 - Homepage: https://cffi.readthedocs.io/en/latest/


Included extensions
===================
cffi-1.15.1, pycparser-2.21
]==])

whatis([==[Description: C Foreign Function Interface for Python. Interact with almost any C code from
Python, based on C-like declarations that you can often copy-paste from header
files or documentation.
]==])
whatis([==[Homepage: https://cffi.readthedocs.io/en/latest/]==])
whatis([==[URL: https://cffi.readthedocs.io/en/latest/]==])
whatis([==[Extensions: cffi-1.15.1, pycparser-2.21]==])

local root = "/apps/easybuild/software/cffi/1.15.1-GCCcore-13.2.0"

conflict("cffi")

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTCFFI", root)
setenv("EBVERSIONCFFI", "1.15.1")
setenv("EBDEVELCFFI", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-cffi-1.15.1-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTCFFI", "pycparser-2.21,cffi-1.15.1")
