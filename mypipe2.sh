#!/bin/bash

# first job called from the day directory
# creates RPLParallel, Unity, and EDFSplit objects, and
# calls aligning_objects and raycast
sbatch /data/src/EE3801PyHipp/rplparallel-slurm.sh

# second set of jobs called from the day directory
sbatch /data/src/EE3801PyHipp/rs1-slurm.sh
sbatch /data/src/EE3801PyHipp/rs2-slurm.sh
sbatch /data/src/EE3801PyHipp/rs3-slurm.sh
sbatch /data/src/EE3801PyHipp/rs4-slurm.sh
