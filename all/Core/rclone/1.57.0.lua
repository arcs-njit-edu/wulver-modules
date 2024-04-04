help([==[

Description
===========
Rclone is a command line program to sync files and directories to and from
 a variety of online storage services


More information
================
 - Homepage: https://rclone.org
]==])

whatis([==[Description: 
 Rclone is a command line program to sync files and directories to and from
 a variety of online storage services
]==])
whatis([==[Homepage: https://rclone.org]==])
whatis([==[URL: https://rclone.org]==])

local root = "/apps/easybuild/software/rclone/1.57.0"

conflict("rclone")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTRCLONE", root)
setenv("EBVERSIONRCLONE", "1.57.0")
setenv("EBDEVELRCLONE", pathJoin(root, "easybuild/Core-rclone-1.57.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
