#!/bin/bash

conda create -n lrgb
conda activate lrgb

conda install pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia
conda install pyg -c pyg 
conda install lightning -c conda-forge
conda install yacs ogb pandas scikit-learn performer-pytorch wandb
conda install openbabel fsspec rdkit -c conda-forge

pip install pyg_lib torch_scatter torch_sparse torch_cluster torch_spline_conv -f https://data.pyg.org/whl/torch-2.2.2+cu121.html
conda install -c dglteam/label/th22_cu121 dgl



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