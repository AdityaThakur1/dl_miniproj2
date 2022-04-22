#!/bin/bash
#SBATCH --nodes=1                        
#SBATCH --ntasks-per-node=1              
#SBATCH --cpus-per-task=8                
#SBATCH --time=10:00:00
#SBATCH --mem=64GB
#SBATCH --job-name=simclr
#SBATCH --output=2104simclr1.out
#SBATCH --gres=gpu:1

eval "$(conda shell.bash hook)"

module purge
module load anaconda3/2020.07
module load cuda/11.3.1    #if you need to use GPU
conda activate /scratch/at4932/projects/dlenv

python train_self_supervised_task.py -d cifar10 -t simclr -b 128 -e 200 -o lars --lr 1.0 -w 1e-6 -u 0