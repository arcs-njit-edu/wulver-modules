help([==[

Description
===========
Git Large File Storage (LFS) replaces large files such as audio
 samples, videos, datasets, and graphics with text pointers inside Git, while
 storing the file contents on a remote server like GitHub.com


More information
================
 - Homepage: https://git-lfs.github.com
]==])

whatis([==[Description: Git Large File Storage (LFS) replaces large files such as audio
 samples, videos, datasets, and graphics with text pointers inside Git, while
 storing the file contents on a remote server like GitHub.com]==])
whatis([==[Homepage: https://git-lfs.github.com]==])
whatis([==[URL: https://git-lfs.github.com]==])

local root = "/apps/easybuild/software/git-lfs/3.2.0"

conflict("git-lfs")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTGITMINLFS", root)
setenv("EBVERSIONGITMINLFS", "3.2.0")
setenv("EBDEVELGITMINLFS", pathJoin(root, "easybuild/Core-git-lfs-3.2.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
