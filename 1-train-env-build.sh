#!/usr/bin/env bash
# run on Ubuntu 22.04 LTS

if [ -d "mish-cuda" ] 
then
    echo "Mish-cuda faund" 
else
    echo "Mish-cuda not faund. Starting git clone..."
    git clone https://github.com/JunnYu/mish-cuda
fi

if [ -d "ScaledYOLOv4" ] 
then
    echo "ScaledYOLOv4 faund" 
else
    echo "ScaledYOLOv4 not faund. Starting git clone..."
    git clone https://github.com/WongKinYiu/ScaledYOLOv4.git
fi

docker build -t jfultr/7food-enginebuild:onnx-trt-0.1.0 -f Dockerfile .