help([==[

Description
===========
Larry Wall's Practical Extraction and Report Language

Includes a small selection of extra CPAN packages for core functionality.


More information
================
 - Homepage: https://www.perl.org/


Included extensions
===================
Carp-1.50, constant-1.33, Data::Dumper-2.183, Exporter-5.77, File::Path-2.18,
File::Spec-3.75, Getopt::Long-2.54, IO::File-1.51, Text::ParseWords-3.31,
Thread::Queue-3.13, threads-2.21
]==])

whatis([==[Description: Larry Wall's Practical Extraction and Report Language

Includes a small selection of extra CPAN packages for core functionality.
]==])
whatis([==[Homepage: https://www.perl.org/]==])
whatis([==[URL: https://www.perl.org/]==])
whatis([==[Extensions: Carp-1.50, constant-1.33, Data::Dumper-2.183, Exporter-5.77, File::Path-2.18, File::Spec-3.75, Getopt::Long-2.54, IO::File-1.51, Text::ParseWords-3.31, Thread::Queue-3.13, threads-2.21]==])

local root = "/apps/easybuild/software/Perl/5.38.0-GCCcore-13.2.0"

conflict("Perl")

if not ( isloaded("zlib/1.2.13") ) then
    load("zlib/1.2.13")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "man"))
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTPERL", root)
setenv("EBVERSIONPERL", "5.38.0")
setenv("EBDEVELPERL", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-Perl-5.38.0-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
setenv("EBEXTSLISTPERL", "threads-2.21,constant-1.33,Getopt::Long-2.54,File::Path-2.18,File::Spec-3.75,IO::File-1.51,Thread::Queue-3.13,Carp-1.50,Exporter-5.77,Text::ParseWords-3.31,Data::Dumper-2.183")
