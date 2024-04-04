help([==[

Description
===========
C, C++, Objective-C compiler, based on LLVM.  Does not
 include C++ standard library -- use libstdc++ from GCC.


More information
================
 - Homepage: https://clang.llvm.org/
]==])

whatis([==[Description: C, C++, Objective-C compiler, based on LLVM.  Does not
 include C++ standard library -- use libstdc++ from GCC.]==])
whatis([==[Homepage: https://clang.llvm.org/]==])
whatis([==[URL: https://clang.llvm.org/]==])

local root = "/apps/easybuild/software/Clang/12.0.1-GCCcore-11.2.0"

conflict("Clang")

if not ( isloaded("binutils/2.37") ) then
    load("binutils/2.37")
end

if not ( isloaded("hwloc/2.5.0") ) then
    load("hwloc/2.5.0")
end

if not ( isloaded("libxml2/2.9.10") ) then
    load("libxml2/2.9.10")
end

if not ( isloaded("ncurses/6.2") ) then
    load("ncurses/6.2")
end

if not ( isloaded("GMP/6.2.1") ) then
    load("GMP/6.2.1")
end

if not ( isloaded("Z3/4.8.12") ) then
    load("Z3/4.8.12")
end

if not ( isloaded("libffi/3.4.2") ) then
    load("libffi/3.4.2")
end

if not ( isloaded("elfutils/0.185") ) then
    load("elfutils/0.185")
end
prepend_path("MODULEPATH", "/apps/easybuild/modules/all/Compiler/Clang-GCC/12.0.1-11.2.0")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCLANG", root)
setenv("EBVERSIONCLANG", "12.0.1")
setenv("EBDEVELCLANG", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-Clang-12.0.1-easybuild-devel"))

setenv("ASAN_SYMBOLIZER_PATH", "/apps/easybuild/software/Clang/12.0.1-GCCcore-11.2.0/bin/llvm-symbolizer")
-- Built with EasyBuild version 4.7.1
