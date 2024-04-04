help([==[

Description
===========
libgit2 is a portable, pure C implementation of the Git core methods provided as a re-entrant
linkable library with a solid API, allowing you to write native speed custom Git applications in any language
which supports C bindings.


More information
================
 - Homepage: https://libgit2.org/
]==])

whatis([==[Description: libgit2 is a portable, pure C implementation of the Git core methods provided as a re-entrant
linkable library with a solid API, allowing you to write native speed custom Git applications in any language
which supports C bindings.]==])
whatis([==[Homepage: https://libgit2.org/]==])
whatis([==[URL: https://libgit2.org/]==])

local root = "/apps/easybuild/software/libgit2/1.5.0-GCCcore-12.2.0"

conflict("libgit2")

if not ( isloaded("PCRE/8.45") ) then
    load("PCRE/8.45")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTLIBGIT2", root)
setenv("EBVERSIONLIBGIT2", "1.5.0")
setenv("EBDEVELLIBGIT2", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-libgit2-1.5.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
