#!/bin/bash

# second job - no dependencies, called from the day directory
jid2=$(sbatch /data/src/EE3801PyHipp/rse-slurm.sh)

# third set of jobs - depends on rse-slurm.sh, called from the day directory
jid3=$(sbatch --dependency=afterok:${jid2##* } /data/src/EE3801PyHipp/rs1a-slurm.sh)
jid4=$(sbatch --dependency=afterok:${jid2##* } /data/src/EE3801PyHipp/rs2a-slurm.sh)
jid5=$(sbatch --dependency=afterok:${jid2##* } /data/src/EE3801PyHipp/rs3a-slurm.sh)
jid6=$(sbatch --dependency=afterok:${jid2##* } /data/src/EE3801PyHipp/rs4a-slurm.sh)

