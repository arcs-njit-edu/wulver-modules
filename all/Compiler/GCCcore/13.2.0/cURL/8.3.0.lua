help([==[

Description
===========
libcurl is a free and easy-to-use client-side URL transfer library,
 supporting DICT, FILE, FTP, FTPS, Gopher, HTTP, HTTPS, IMAP, IMAPS, LDAP,
 LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, Telnet and TFTP.
 libcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading, HTTP
 form based upload, proxies, cookies, user+password authentication (Basic,
 Digest, NTLM, Negotiate, Kerberos), file transfer resume, http proxy tunneling
 and more.


More information
================
 - Homepage: https://curl.haxx.se
]==])

whatis([==[Description: 
 libcurl is a free and easy-to-use client-side URL transfer library,
 supporting DICT, FILE, FTP, FTPS, Gopher, HTTP, HTTPS, IMAP, IMAPS, LDAP,
 LDAPS, POP3, POP3S, RTMP, RTSP, SCP, SFTP, SMTP, SMTPS, Telnet and TFTP.
 libcurl supports SSL certificates, HTTP POST, HTTP PUT, FTP uploading, HTTP
 form based upload, proxies, cookies, user+password authentication (Basic,
 Digest, NTLM, Negotiate, Kerberos), file transfer resume, http proxy tunneling
 and more.
]==])
whatis([==[Homepage: https://curl.haxx.se]==])
whatis([==[URL: https://curl.haxx.se]==])

local root = "/apps/easybuild/software/cURL/8.3.0-GCCcore-13.2.0"

conflict("cURL")

if not ( isloaded("zlib/1.2.13") ) then
    load("zlib/1.2.13")
end

if not ( isloaded("OpenSSL/1.1") ) then
    load("OpenSSL/1.1")
end

prepend_path("ACLOCAL_PATH", pathJoin(root, "share/aclocal"))
prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("CPATH", pathJoin(root, "include"))
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("MANPATH", pathJoin(root, "share/man"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTCURL", root)
setenv("EBVERSIONCURL", "8.3.0")
setenv("EBDEVELCURL", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-cURL-8.3.0-easybuild-devel"))

setenv("CURL_INCLUDES", "/apps/easybuild/software/cURL/8.3.0-GCCcore-13.2.0/include")
-- Built with EasyBuild version 4.9.0
