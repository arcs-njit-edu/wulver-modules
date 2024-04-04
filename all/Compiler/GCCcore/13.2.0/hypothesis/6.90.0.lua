help([==[

Description
===========
Hypothesis is an advanced testing library for Python. It lets you write tests which are parametrized
 by a source of examples, and then generates simple and comprehensible examples that make your tests fail. This lets
 you find more bugs in your code with less work.


More information
================
 - Homepage: https://github.com/HypothesisWorks/hypothesis
]==])

whatis([==[Description: Hypothesis is an advanced testing library for Python. It lets you write tests which are parametrized
 by a source of examples, and then generates simple and comprehensible examples that make your tests fail. This lets
 you find more bugs in your code with less work.]==])
whatis([==[Homepage: https://github.com/HypothesisWorks/hypothesis]==])
whatis([==[URL: https://github.com/HypothesisWorks/hypothesis]==])

local root = "/apps/easybuild/software/hypothesis/6.90.0-GCCcore-13.2.0"

conflict("hypothesis")

if not ( isloaded("Python/3.11.5") ) then
    load("Python/3.11.5")
end

if not ( isloaded("Python-bundle-PyPI/2023.10") ) then
    load("Python-bundle-PyPI/2023.10")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("PATH", pathJoin(root, "bin"))
setenv("EBROOTHYPOTHESIS", root)
setenv("EBVERSIONHYPOTHESIS", "6.90.0")
setenv("EBDEVELHYPOTHESIS", pathJoin(root, "easybuild/Compiler-GCCcore-13.2.0-hypothesis-6.90.0-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.11/site-packages"))
-- Built with EasyBuild version 4.9.0
