help([[
For detailed instructions, go to:
    https://github.com/rchereji/plot2DO

This module sets the following environment variables:
    PLOT2DO_BASE:   directory containing plot2DO
    R_LIBS_USER:    sets R library directory to use plot2DO
    R_PROFILE_USER: allows to configure CPAN automatically

This module loads the following modules and their requirements:
    - r/3.6.0
]])

whatis("Version: 1.0 or later, but before 1,1")
whatis("Keywords: plot2DO, Utility")
whatis("URL: https://github.com/rchereji/plot2DO")
whatis("Description: Plot 2D Occupancies")

always_load("nixpkgs/16.09")
always_load("gcc/7.3.0")
always_load("r/3.6.0")

local home = os.getenv("HOME") or ""
local base = pathJoin(home, "projects/def-robertf/plot2DO")
setenv("PLOT2DO_BASE", base)
setenv("R_LIBS_USER", pathJoin(base, "libs"))
setenv("R_PROFILE_USER", pathJoin(base, ".Rprofile"))
