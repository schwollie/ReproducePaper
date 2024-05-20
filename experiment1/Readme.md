# Reproduction of paper 'On the Connection Between MPNN and Graph Transformer'

Read this if you don't want to use the jupyter notebook

## Installation

To install the required packages check setup.sh and update to your cuda version

```bash
chmod +x ./setup.sh
bash -i ./setup.sh
```

## Usage

### Option1:

Run single model from command line

```bash
conda activate paper
python main.py --cfg "PATH_TO_CONFIG" wandb.use False
```

### Option2:

Run all models from shell script

```bash
chmod +x ./runAll.sh
bash -i ./runAll.sh
```