#!/bin/bash
#SBATCH --nodes=1                        
#SBATCH --ntasks-per-node=1              
#SBATCH --cpus-per-task=8                
#SBATCH --time=08:00:00
#SBATCH --mem=32GB
#SBATCH --job-name=rotation
#SBATCH --output=2104rotation_200_3.out
#SBATCH --gres=gpu:1

eval "$(conda shell.bash hook)"

module purge
module load anaconda3/2020.07
module load cuda/11.3.1    #if you need to use GPU
conda activate /scratch/at4932/projects/dlenv

python train_self_supervised_task.py -d cifar10 -t rotation -e 200