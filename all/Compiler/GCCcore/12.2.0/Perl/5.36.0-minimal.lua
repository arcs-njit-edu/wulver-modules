help([==[

Description
===========
Larry Wall's Practical Extraction and Report Language

This is a minimal build without any modules. Should only be used for build dependencies.


More information
================
 - Homepage: https://www.perl.org/
]==])

whatis([==[Description: Larry Wall's Practical Extraction and Report Language

This is a minimal build without any modules. Should only be used for build dependencies.
]==])
whatis([==[Homepage: https://www.perl.org/]==])
whatis([==[URL: https://www.perl.org/]==])

local root = "/apps/easybuild/software/Perl/5.36.0-GCCcore-12.2.0-minimal"

conflict("Perl")

if not ( isloaded("zlib/1.2.12") ) then
    load("zlib/1.2.12")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPERL", root)
setenv("EBVERSIONPERL", "5.36.0")
setenv("EBDEVELPERL", pathJoin(root, "easybuild/Compiler-GCCcore-12.2.0-Perl-5.36.0-minimal-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
