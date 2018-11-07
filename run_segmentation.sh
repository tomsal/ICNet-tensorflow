#!/usr/bin/env bash

echo -e "\n--- Running semantic segmentation."
#cd ICNet-tensorflow
cd $(dirname $0)
source activate tf
echo "Executing:"\
  "python inference.py --img-path=../${1} --save-dir=../${2}"\
  "--model=train --dataset=cityscapes --filter-scale=1"
python inference.py --img-path=../${1} --save-dir=../${2}\
  --model=train --dataset=cityscapes --filter-scale=1
source deactivate
cd ..

