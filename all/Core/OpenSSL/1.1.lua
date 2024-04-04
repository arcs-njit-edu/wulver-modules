help([==[

Description
===========
The OpenSSL Project is a collaborative effort to develop a robust, commercial-grade, full-featured,
 and Open Source toolchain implementing the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS v1)
 protocols as well as a full-strength general purpose cryptography library.


More information
================
 - Homepage: https://www.openssl.org/
]==])

whatis([==[Description: The OpenSSL Project is a collaborative effort to develop a robust, commercial-grade, full-featured,
 and Open Source toolchain implementing the Secure Sockets Layer (SSL v2/v3) and Transport Layer Security (TLS v1)
 protocols as well as a full-strength general purpose cryptography library. ]==])
whatis([==[Homepage: https://www.openssl.org/]==])
whatis([==[URL: https://www.openssl.org/]==])

local root = "/apps/easybuild/software/OpenSSL/1.1"

conflict("OpenSSL")

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTOPENSSL", root)
setenv("EBVERSIONOPENSSL", "1.1")
setenv("EBDEVELOPENSSL", pathJoin(root, "easybuild/Core-OpenSSL-1.1-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
