help([==[

Description
===========
CREST is an utility/driver program for the xtb program. Originally it was designed
 as conformer sampling program, hence the abbreviation Conformer–Rotamer Ensemble Sampling Tool,
 but now offers also some utility functions for calculations with the GFNn–xTB methods. Generally
 the program functions as an IO based OMP scheduler (i.e., calculations are performed by the xtb
 program) and tool for the creation and analysation of structure ensembles.


More information
================
 - Homepage: https://xtb-docs.readthedocs.io/en/latest/crest.html
]==])

whatis([==[Description: CREST is an utility/driver program for the xtb program. Originally it was designed
 as conformer sampling program, hence the abbreviation Conformer–Rotamer Ensemble Sampling Tool,
 but now offers also some utility functions for calculations with the GFNn–xTB methods. Generally
 the program functions as an IO based OMP scheduler (i.e., calculations are performed by the xtb
 program) and tool for the creation and analysation of structure ensembles.
]==])
whatis([==[Homepage: https://xtb-docs.readthedocs.io/en/latest/crest.html]==])
whatis([==[URL: https://xtb-docs.readthedocs.io/en/latest/crest.html]==])

local root = "/apps/easybuild/software/CREST/2.12-gfbf-2022b"

conflict("CREST")

if not ( isloaded("FlexiBLAS/3.2.1") ) then
    load("FlexiBLAS/3.2.1")
end

if not ( isloaded("FFTW/3.3.10") ) then
    load("FFTW/3.3.10")
end

if not ( isloaded("xtb/6.6.1") ) then
    load("xtb/6.6.1")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTCREST", root)
setenv("EBVERSIONCREST", "2.12")
setenv("EBDEVELCREST", pathJoin(root, "easybuild/Compiler-GCC-12.2.0-CREST-2.12-easybuild-devel"))

-- Built with EasyBuild version 4.8.2
