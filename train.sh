#!/usr/bin/env bash

python3 train_distribute.py \
--data_list "./data/cityscapes/train++.txt" \
--epochs 1 \
--rgb 1 \
--save_dir ./ \
--data_dir ./



# whole evaluation
python val.py --data_set cityscapes \
--data_dir "./" \
--data_list "./data/cityscapes/val.txt" \
--arch dfanet \
--rgb 1 \
--whole False \
--restore_from "/home/mlrig/Documents/TFG/Code/weights.pth" \
--output_dir "./dfanet_out"

python3 prediction_test_different_size.py
--input_dir ./leftImg8bit/test