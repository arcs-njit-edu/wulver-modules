help([==[

Description
===========
MPI for Python (mpi4py) provides bindings of the Message Passing Interface (MPI) standard for
 the Python programming language, allowing any Python program to exploit multiple processors.


More information
================
 - Homepage: https://github.com/mpi4py/mpi4py


Included extensions
===================
mpi4py-3.1.5
]==])

whatis([==[Description: MPI for Python (mpi4py) provides bindings of the Message Passing Interface (MPI) standard for
 the Python programming language, allowing any Python program to exploit multiple processors.]==])
whatis([==[Homepage: https://github.com/mpi4py/mpi4py]==])
whatis([==[URL: https://github.com/mpi4py/mpi4py]==])
whatis([==[Extensions: mpi4py-3.1.5]==])

local root = "/apps/easybuild/software/mpi4py/3.1.5-gompi-2023b"

conflict("mpi4py")

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
setenv("EBROOTMPI4PY", root)
setenv("EBVERSIONMPI4PY", "3.1.5")
setenv("EBDEVELMPI4PY", pathJoin(root, "easybuild/MPI-GCC-13.2.0-OpenMPI-4.1.6-mpi4py-3.1.5-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
setenv("EBEXTSLISTMPI4PY", "mpi4py-3.1.5")
