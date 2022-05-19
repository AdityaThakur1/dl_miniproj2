# DL Mini-Project 2: Exploring Self-supervised Learning on Multi-modal Data
*Authors:* Nikunj Gupta, Harish Chauhan, Aditya Thakur 


## Abstract 

The paradigm of supervised learning has proved to perform exceptionally well on tasks they are trained on using large amount of clean labelled data. However, there is a limitation with availability of labelled data as it has many associated costs. In real world, huge amount of raw and unlabeled data is present and with optimized techniques they can be used to produce meaningful predictions, also known as self-supervised learning. We have used 4 different pretext tasks (Rotation, SimCLR, Context-Encoder and Contrastive Predictive Coding) to determine which performs better on CIFAR-10. Furthermore, we live in a world involving multiple modalities – vision, sound, language, taste, touch, and so on. Artificial Intelligence (AI) needs to be capable of interpreting and reasoning about multi-modal inputs to make significant progress in understanding the world around us.
In this project we aim to combine the a forementioned motivations and develop neural network architectures that learn visual representations via self-supervision by making use of images and text descriptions widely available on the internet. In particular we use the Wikipedia multimodal dataset, implement the CLIP architecture, and perform some ablation studies. 

## Prerequisites
- Python 3.6+
- PyTorch 1.0+

# Description of files in the repository 
- train_self_supervised_task.py : Self supervised training with 4 different pretext tasks 
- ssl_multimodal.ipynb : Code for inference on multi-modal data
- run : folder containing run configs, sbatch files and output files 
- results : folder containing results from all training

# Training
```
# Start training with: 
python train_self_supervised_task.py -d <dataset> -t <pretext task> -e <number of epochs>

e.g.
python train_self_supervised_task.py -d cifar10 -t rotation -e 200
```

