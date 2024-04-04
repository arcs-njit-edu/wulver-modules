help([==[

Description
===========
tmux is a terminal multiplexer: it enables a number of
terminals to be created, accessed, and controlled from a single screen. tmux
may be detached from a screen and continue running in the background, then
later reattached.


More information
================
 - Homepage: https://github.com/tmux/tmux/
]==])

whatis([==[Description: tmux is a terminal multiplexer: it enables a number of
terminals to be created, accessed, and controlled from a single screen. tmux
may be detached from a screen and continue running in the background, then
later reattached.]==])
whatis([==[Homepage: https://github.com/tmux/tmux/]==])
whatis([==[URL: https://github.com/tmux/tmux/]==])

local root = "/apps/easybuild/software/tmux/3.3a"

conflict("tmux")

if not ( isloaded("libevent/2.1.12") ) then
    load("libevent/2.1.12")
end

if not ( isloaded("ncurses/6.4") ) then
    load("ncurses/6.4")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTTMUX", root)
setenv("EBVERSIONTMUX", "3.3a")
setenv("EBDEVELTMUX", pathJoin(root, "easybuild/Core-tmux-3.3a-easybuild-devel"))

-- Built with EasyBuild version 4.8.0
