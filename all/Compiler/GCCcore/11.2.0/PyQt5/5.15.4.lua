help([==[

Description
===========
PyQt5 is a set of Python bindings for v5 of the Qt application framework from The Qt Company.
This bundle includes PyQtWebEngine, a set of Python bindings for The Qt Company’s Qt WebEngine framework.


More information
================
 - Homepage: https://www.riverbankcomputing.com/software/pyqt
]==])

whatis([==[Description: PyQt5 is a set of Python bindings for v5 of the Qt application framework from The Qt Company.
This bundle includes PyQtWebEngine, a set of Python bindings for The Qt Company’s Qt WebEngine framework.]==])
whatis([==[Homepage: https://www.riverbankcomputing.com/software/pyqt]==])
whatis([==[URL: https://www.riverbankcomputing.com/software/pyqt]==])

local root = "/apps/easybuild/software/PyQt5/5.15.4-GCCcore-11.2.0"

conflict("PyQt5")

if not ( isloaded("Python/3.9.6") ) then
    load("Python/3.9.6")
end

if not ( isloaded("Qt5/5.15.2") ) then
    load("Qt5/5.15.2")
end

prepend_path("CMAKE_PREFIX_PATH", root)
prepend_path("LIBRARY_PATH", pathJoin(root, "lib"))
prepend_path("PATH", pathJoin(root, "bin"))
prepend_path("XDG_DATA_DIRS", pathJoin(root, "share"))
setenv("EBROOTPYQT5", root)
setenv("EBVERSIONPYQT5", "5.15.4")
setenv("EBDEVELPYQT5", pathJoin(root, "easybuild/Compiler-GCCcore-11.2.0-PyQt5-5.15.4-easybuild-devel"))

prepend_path("PYTHONPATH", pathJoin(root, "lib/python3.9/site-packages"))
prepend_path("QT_INSTALL_DATA", pathJoin(root, "qsci"))
-- Built with EasyBuild version 4.7.1
