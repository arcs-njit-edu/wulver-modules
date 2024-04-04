help([==[

Description
===========
Python bindings for ZeroMQ


More information
================
 - Homepage: https://www.zeromq.org/bindings:python
]==])

whatis([==[Description: Python bindings for ZeroMQ]==])
whatis([==[Homepage: https://www.zeromq.org/bindings:python]==])
whatis([==[URL: https://www.zeromq.org/bindings:python]==])

local root = "/apps/easybuild/software/PyZMQ/25.1.0-GCCcore-12.2.0"

conflict("PyZMQ")

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("ZeroMQ/4.3.4") ) then
    load("ZeroMQ/4.3.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
setenv("EBROOTPYZMQ", root)
setenv("EBVERSIONPYZMQ", "25.1.0")
setenv("EBDEVELPYZMQ", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-PyZMQ-25.1.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
