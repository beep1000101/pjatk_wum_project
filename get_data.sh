#!/bin/bash
current_directory=$(pwd)
data_directory="$current_directory/.dataset"
if [ ! -d "$data_directory" ]; then
  mkdir -p "$data_directory"
fi
if [ -d "$data_directory/dataset" ]; then
  echo "Dataset already exists in $data_directory/dataset"
  exit 0
fi
curl -L -o "$data_directory/dataset.zip" https://www.kaggle.com/api/v1/datasets/download/sartajbhuvaji/brain-tumor-classification-mri
# Unzip the dataset
unzip -q "$data_directory/dataset.zip" -d "$data_directory"
