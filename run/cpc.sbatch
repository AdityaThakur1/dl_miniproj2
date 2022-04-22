#!/bin/bash
#SBATCH --nodes=1                        
#SBATCH --ntasks-per-node=1              
#SBATCH --cpus-per-task=16               
#SBATCH --time=48:00:00
#SBATCH --mem=128GB
#SBATCH --job-name=cpc
#SBATCH --output=cpc_full_2.out
#SBATCH --gres=gpu:2

eval "$(conda shell.bash hook)"

module purge
module load anaconda3/2020.07
module load cuda/11.3.1    #if you need to use GPU
conda activate /scratch/at4932/projects/dlenv

python train_self_supervised_task.py -d cifar10 -t cpc -b 64 -e 200 --lr 1e-3 --o adam