-- -*- lua -*-
--
-- Feb 2024 am


help([==[
        This module loads the appropriate environment for
        using the opendihu 2204 Singularity image
Description
===========
This module loads the appropriate environment for
using the opendihu 2204 Singularity image. This image serves
all the available functionality for executing simulations,
also in parallel. Post-processing such as plotting is not
possible in containers.


More information
================
 - Homepage: https://opendihu.readthedocs.io/en/latest/

]==])

if not ( isloaded("apptainer") ) then
    load("apptainer")
end

whatis("Sets alias for opendihu 2204 Singularity image")

setenv("OPENDIHU", "/apps/easybuild/containers/opendihu.sif")
set_alias("opendihu", "singularity exec $OPENDIHU")