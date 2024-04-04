help([==[

Description
===========
Apache Arrow (incl. PyArrow Python bindings), a cross-language development platform
 for in-memory data.


More information
================
 - Homepage: https://arrow.apache.org
]==])

whatis([==[Description: Apache Arrow (incl. PyArrow Python bindings), a cross-language development platform
 for in-memory data.]==])
whatis([==[Homepage: https://arrow.apache.org]==])
whatis([==[URL: https://arrow.apache.org]==])

local root = "/apps/easybuild/software/Arrow/11.0.0-gfbf-2022b"

conflict("Arrow")

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("Python/3.10.8") ) then
    load("Python/3.10.8")
end

if not ( isloaded("SciPy-bundle/2023.02") ) then
    load("SciPy-bundle/2023.02")
end

if not ( isloaded("Boost/1.81.0") ) then
    load("Boost/1.81.0")
end

if not ( isloaded("lz4/1.9.4") ) then
    load("lz4/1.9.4")
end

if not ( isloaded("bzip2/1.0.8") ) then
    load("bzip2/1.0.8")
end

if not ( isloaded("zstd/1.5.2") ) then
    load("zstd/1.5.2")
end

if not ( isloaded("snappy/1.1.9") ) then
    load("snappy/1.1.9")
end

if not ( isloaded("RapidJSON/1.1.0") ) then
    load("RapidJSON/1.1.0")
end

if not ( isloaded("RE2/2023-03-01") ) then
    load("RE2/2023-03-01")
end

if not ( isloaded("utf8proc/2.8.0") ) then
    load("utf8proc/2.8.0")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTARROW", root)
setenv("EBVERSIONARROW", "11.0.0")
setenv("EBDEVELARROW", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-Arrow-11.0.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.10/site-packages"))
-- Built with EasyBuild version 4.8.2
