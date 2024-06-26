#!/bin/bash
#SBATCH --job-name=pollard_rho2
##SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
##SBATCH --mem-per-cpu=6G
#SBATCH --time=14-23:59:00
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
##SBATCH --mail-user=kalebkodo@gmail.com
#SBATCH --output=/home/ilaoualy/yolov5/out.txt


##module purge

##cd yolov5
##module load Python
python3 train.py


