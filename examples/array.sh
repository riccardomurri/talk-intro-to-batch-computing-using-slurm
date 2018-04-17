#! /bin/sh
#

# MATLAB job array: run simulations with different parameters

# short-hand
matlab='matlab -nodesktop -nodisplay'

# note: `case ... in` uses *string* comparison!
case "$SLURM_ARRAY_TASK_ID" in

    '1')
        param1=1.5
        param2=3.4
        exec $matlab -r simul $param1 $param2
        ;;

    '2')
        param1=1.5
        param2=2.7
        exec $matlab -r simul $param1 $param2
        ;;

    '3')
        param1=1.2
        param2=3.4
        exec $matlab -r simul $param1 $param2
        ;;

    '4')
        param1=1.2
        param2=2.7
        exec $matlab -r simul $param1 $param2
        ;;

esac
