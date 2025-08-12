#!/bin/bash
source $HOME/conda/etc/profile.d/conda.sh
conda activate

############################################
DEVICE=1
ENV_NAME=animate-x
CONFIG=configs/Animate_X_infer.yaml 
############################################

set -e

conda activate $ENV_NAME
export CUDA_VISIBLE_DEVICES=$DEVICE

python inference.py --cfg $CONFIG