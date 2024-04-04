help([==[

Description
===========
The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.


More information
================
 - Homepage: https://www.netlib.org/scalapack/
]==])

whatis([==[Description: The ScaLAPACK (or Scalable LAPACK) library includes a subset of LAPACK routines
 redesigned for distributed memory MIMD parallel computers.]==])
whatis([==[Homepage: https://www.netlib.org/scalapack/]==])
whatis([==[URL: https://www.netlib.org/scalapack/]==])

local root = "/apps/easybuild/software/ScaLAPACK/2.2.0-gompi-2022b-fb"

conflict("ScaLAPACK")

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LD_LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PKG_CONFIG_PATH", pathJoin(root, "lib/pkgconfig"))
setenv("EBROOTSCALAPACK", root)
setenv("EBVERSIONSCALAPACK", "2.2.0")
setenv("EBDEVELSCALAPACK", pathJoin(root, "easybuild/MPI-GCC-12.2.0-OpenMPI-4.1.4-ScaLAPACK-2.2.0-fb-easybuild-devel"))

-- Built with EasyBuild version 4.7.1
