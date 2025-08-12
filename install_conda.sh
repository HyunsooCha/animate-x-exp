#!/bin/bash
source $HOME/conda/etc/profile.d/conda.sh
conda activate

############################################
ENV_NAME=animate-x
WORK_PATH=$HOME/GitHub/animate-x
############################################

conda remove -y -n $ENV_NAME --all

set -e

conda create -y -n $ENV_NAME python=3.9
conda activate $ENV_NAME

echo 'Installing other packages'
pip install uv
uv pip install -r $WORK_PATH/requirements.txt

echo 'Installing pytorch'
pip install torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 --index-url https://download.pytorch.org/whl/cu121
pip uninstall -y onnxruntime
pip install --upgrade onnxruntime-gpu==1.19.2
pip install 'git+https://github.com/facebookresearch/xformers.git@v0.0.20'