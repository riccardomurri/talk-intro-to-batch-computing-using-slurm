#! /bin/bash

# load the `module` command
if [ -r "/etc/profile.d/modules.sh" ]; then
  . "/etc/profile.d/modules.sh"
else
    echo 1>&2 "Cannot load 'module' command"
    exit 69  # EX_UNAVAILABLE
fi

# load an older version of MATLAB
module load MATLAB/R2013b

exec matlab -nodesktop -nodisplay -r version
