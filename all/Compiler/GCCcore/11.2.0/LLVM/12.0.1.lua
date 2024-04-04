help([==[

Description
===========
The LLVM Core libraries provide a modern source- and target-independent
 optimizer, along with code generation support for many popular CPUs
 (as well as some less common ones!) These libraries are built around a well
 specified code representation known as the LLVM intermediate representation
 ("LLVM IR"). The LLVM Core libraries are well documented, and it is
 particularly easy to invent your own language (or port an existing compiler)
 to use LLVM as an optimizer and code generator.


More information
================
 - Homepage: https://llvm.org/
]==])

whatis([==[Description: The LLVM Core libraries provide a modern source- and target-independent
 optimizer, along with code generation support for many popular CPUs
 (as well as some less common ones!) These libraries are built around a well
 specified code representation known as the LLVM intermediate representation
 ("LLVM IR"). The LLVM Core libraries are well documented, and it is
 particularly easy to invent your own language (or port an existing compiler)
 to use LLVM as an optimizer and code generator.]==])
whatis([==[Homepage: https://llvm.org/]==])
whatis([==[URL: https://llvm.org/]==])

local root = "/apps/easybuild/software/LLVM/12.0.1-GCCcore-11.2.0"

conflict("LLVM")

if not ( isloaded("ncurses/6.2") ) then
    load("ncurses/6.2")
end

if not ( isloaded("zlib/1.2.11") ) then
    load("zlib/1.2.11")
end
prepend_path("MODULEPATH", "/apps/easybuild/modules/all/Compiler/LLVM/12.0.1")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTLLVM", root)
setenv("EBVERSIONLLVM", "12.0.1")
setenv("EBDEVELLLVM", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-LLVM-12.0.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
