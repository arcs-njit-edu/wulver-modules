help([==[

Description
===========
p7zip is a quick port of 7z.exe and 7za.exe (command line version of 7zip) for Unix.
 7-Zip is a file archiver with highest compression ratio.


More information
================
 - Homepage: http://p7zip.sourceforge.net/
]==])

whatis([==[Description: p7zip is a quick port of 7z.exe and 7za.exe (command line version of 7zip) for Unix.
 7-Zip is a file archiver with highest compression ratio.]==])
whatis([==[Homepage: http://p7zip.sourceforge.net/]==])
whatis([==[URL: http://p7zip.sourceforge.net/]==])

local root = "/apps/easybuild/software/p7zip/17.04"

conflict("p7zip")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTP7ZIP", root)
setenv("EBVERSIONP7ZIP", "17.04")
setenv("EBDEVELP7ZIP", pathJoin(root, "easybuild/Core-p7zip-17.04-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
