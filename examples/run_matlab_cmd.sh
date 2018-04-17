#! /bin/sh
#
# Run MATLAB command(s) non-interactively.
# Note: if you want to run a MATLAB file,
# strip away the `.m` file name ending.
#
matlab -nodesktop -nodisplay -r "$@"
