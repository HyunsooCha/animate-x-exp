#!/bin/bash
source $HOME/conda/etc/profile.d/conda.sh
conda activate

############################################
DEVICE=1
ENV_NAME=animate-x
SOURCE_VIDEO_PATHS=data/source_videos
SAVED_POSE_DIR=data/saved_pkl
SAVED_POSE=data/saved_pose
SAVED_FRAME_DIR=data/saved_frames
############################################

set -e

conda activate $ENV_NAME
export CUDA_VISIBLE_DEVICES=$DEVICE

python process_data.py \
    --source_video_paths $SOURCE_VIDEO_PATHS \
    --saved_pose_dir $SAVED_POSE_DIR \
    --saved_pose $SAVED_POSE \
    --saved_frame_dir $SAVED_FRAME_DIR