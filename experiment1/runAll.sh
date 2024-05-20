#!/bin/bash

conda activate paper

# peptidesfunc:
python main.py --cfg configs/GCN/peptides-func-GCN.yaml  wandb.use False
python main.py --cfg configs/GCN/VN-peptides-func-GCN.yaml  wandb.use False

python main.py --cfg configs/GatedGCN/peptides-func-GatedGCN.yaml  wandb.use False
python main.py --cfg configs/GatedGCN/VN-peptides-func-GatedGCN.yaml  wandb.use False

python main.py --cfg configs/GINE/peptides-func-GINE.yaml  wandb.use False
python main.py --cfg configs/GINE/VN-peptides-func-GINE.yaml  wandb.use False

python main.py --cfg configs/SAN/peptides-func-SAN.yaml  wandb.use False
python main.py --cfg configs/SAN/peptides-func-SAN+RWSE.yaml  wandb.use False

#peptidesstruct:
python main.py --cfg configs/GCN/peptides-struct-GCN.yaml  wandb.use False
python main.py --cfg configs/GCN/VN-peptides-struct-GCN.yaml  wandb.use False

python main.py --cfg configs/GatedGCN/peptides-struct-GatedGCN.yaml  wandb.use False
python main.py --cfg configs/GatedGCN/VN-peptides-struct-GatedGCN.yaml  wandb.use False

python main.py --cfg configs/GINE/peptides-struct-GINE.yaml  wandb.use False
python main.py --cfg configs/GINE/VN-peptides-struct-GINE.yaml  wandb.use False

python main.py --cfg configs/SAN/peptides-struct-SAN.yaml  wandb.use False
python main.py --cfg configs/SAN/peptides-struct-SAN+RWSE.yaml  wandb.use False