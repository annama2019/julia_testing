#!/bin/bash
#SBATCH -J plot
#SBATCH -o /n/home10/annama/julia_test/julia_testing/outputs/plot_out.out
#SBATCH -e /n/home10/annama/julia_test/julia_testing/outputs/plot_out.err
#SBATCH -p shared
#SBATCH -N 1
#SBATCH -c 1
#SBATCH -t 0-00:30
#SBATCH --mem=2G

# Load required software modules
module load julia/1.3.1-fasrc01
srun -n 1 -c 1 julia plot.jl
