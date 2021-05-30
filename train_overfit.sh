#!/usr/bin/env bash

python3 train_distribute.py \
--data_list "./data/cityscapes/train_overfit.txt" \
--epochs 100 \
--rgb 1 \
--save_dir ./ \
--data_dir ./



# whole evaluation
python val.py --data_set cityscapes \
--data_dir "./" \
--data_list "./data/cityscapes/val_overfit.txt" \
--arch dfanet \
--rgb 1 \
--whole False \
--restore_from "/home/mlrig/Documents/TFG/Code/weights.pth" \
--output_dir "./dfanet_out"

python3 prediction_test_different_size.py
