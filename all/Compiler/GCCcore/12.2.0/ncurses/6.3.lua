help([==[

Description
===========
The Ncurses (new curses) library is a free software emulation of curses in
 System V Release 4.0, and more. It uses Terminfo format, supports pads and
 color and multiple highlights and forms characters and function-key mapping,
 and has all the other SYSV-curses enhancements over BSD Curses.


More information
================
 - Homepage: https://www.gnu.org/software/ncurses/
]==])

whatis([==[Description: 
 The Ncurses (new curses) library is a free software emulation of curses in
 System V Release 4.0, and more. It uses Terminfo format, supports pads and
 color and multiple highlights and forms characters and function-key mapping,
 and has all the other SYSV-curses enhancements over BSD Curses.
]==])
whatis([==[Homepage: https://www.gnu.org/software/ncurses/]==])
whatis([==[URL: https://www.gnu.org/software/ncurses/]==])

local root = "/apps/easybuild/software/ncurses/6.3-GCCcore-12.2.0"

conflict("ncurses")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTNCURSES", root)
setenv("EBVERSIONNCURSES", "6.3")
setenv("EBDEVELNCURSES", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-ncurses-6.3-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
