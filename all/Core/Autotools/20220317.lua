help([==[

Description
===========
This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool


More information
================
 - Homepage: https://autotools.io
]==])

whatis([==[Description: 
 This bundle collect the standard GNU build tools: Autoconf, Automake
 and libtool
]==])
whatis([==[Homepage: https://autotools.io]==])
whatis([==[URL: https://autotools.io]==])

local root = "/apps/easybuild/software/Autotools/20220317"

conflict("Autotools")

if not ( isloaded("Autoconf/2.71") ) then
    load("Autoconf/2.71")
end

if not ( isloaded("Automake/1.16.5") ) then
    load("Automake/1.16.5")
end

if not ( isloaded("libtool/2.4.7") ) then
    load("libtool/2.4.7")
end

setenv("EBROOTAUTOTOOLS", root)
setenv("EBVERSIONAUTOTOOLS", "20220317")
setenv("EBDEVELAUTOTOOLS", pathJoin(root, "easybuild/Core-Autotools-20220317-easybuild-devel"))

-- Built with EasyBuild version 4.7.1