help([==[

Description
===========
Git is a free and open source distributed version control system designed
to handle everything from small to very large projects with speed and efficiency.


More information
================
 - Homepage: https://git-scm.com
]==])

whatis([==[Description: Git is a free and open source distributed version control system designed
to handle everything from small to very large projects with speed and efficiency.]==])
whatis([==[Homepage: https://git-scm.com]==])
whatis([==[URL: https://git-scm.com]==])

local root = "/apps/easybuild/software/git/2.38.1-GCCcore-12.2.0-nodocs"

conflict("git")

if not ( isloaded("cURL/7.86.0") ) then
    load("cURL/7.86.0")
end

if not ( isloaded("expat/2.4.9") ) then
    load("expat/2.4.9")
end

if not ( isloaded("gettext/0.21.1") ) then
    load("gettext/0.21.1")
end

if not ( isloaded("Perl/5.36.0") ) then
    load("Perl/5.36.0")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTGIT", root)
setenv("EBVERSIONGIT", "2.38.1")
setenv("EBDEVELGIT", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-git-2.38.1-nodocs-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
