#! /bin/sh
#
# Run the MATLAB script given as first argument.
#
# The '#SBATCH' lines below instruct the SLURM
# batch-queuing system on how to handle this job.
#
### use 1 CPU
#SBATCH -c 1
#
### run for (max) 8 hours
#SBATCH --time=8:00:00
#
### use (max) 3500 MB of memory per CPU
#SBATCH --mem-per-cpu=3500m
#
### write both output and errors to file `run_matlab.NNN.log`
#SBATCH -o run_matlab.%j.log
#SBATCH -e run_matlab.%j.log
#

if ! [ -r "$1" ]; then
    echo "Cannot find MATLAB file '$1' in directory '$PWD' - aborting." 2>&1
    exit 1
fi

# the following line uses the cluster's default MATLAB; if you want to
# run a specific version of MATLAB, check out script
# `job_with_modules.sh` in this repository
matlab -nodisplay -nodesktop < "$1"
