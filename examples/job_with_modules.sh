#! /bin/bash

# load the `module` command
if [ -r "/etc/profile.d/modules.sh" ]; then
  . "/etc/profile.d/modules.sh"
else
    echo 1>&2 "Cannot load 'module' command"
    exit 69  # EX_UNAVAILABLE
fi

# ensure we have access to all the module directories
# that are enabled in interactive sessions
module use /opt/spack/share/spack/modules/linux-ubuntu16.04-x86_64
module use /opt/easybuild/modules/all
module use /opt/modulefiles
module use "$HOME/modulefiles"

# load an older version of MATLAB
module load MATLAB/R2013b

# show that it's really MATLAB 2013b
matlab -nodesktop -nodisplay -r version
