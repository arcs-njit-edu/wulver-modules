help([==[

Description
===========
DMTCP (Distributed MultiThreaded Checkpointing) transparently checkpoints a single-host or
 distributed computation in user-space -- with no modifications to user code or to the O/S. It works on most Linux
 applications, including Python, Matlab, R, GUI desktops, MPI, etc.


More information
================
 - Homepage: http://dmtcp.sourceforge.net/
]==])

whatis([==[Description: DMTCP (Distributed MultiThreaded Checkpointing) transparently checkpoints a single-host or
 distributed computation in user-space -- with no modifications to user code or to the O/S. It works on most Linux
 applications, including Python, Matlab, R, GUI desktops, MPI, etc.]==])
whatis([==[Homepage: http://dmtcp.sourceforge.net/]==])
whatis([==[URL: http://dmtcp.sourceforge.net/]==])

local root = "/apps/easybuild/software/DMTCP/2.6.0"

conflict("DMTCP")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTDMTCP", root)
setenv("EBVERSIONDMTCP", "2.6.0")
setenv("EBDEVELDMTCP", pathJoin(root, "easybuild/Core-DMTCP-2.6.0-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
