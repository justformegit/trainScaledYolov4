FROM nvcr.io/nvidia/pytorch:20.09-py3

RUN apt-get update

# install mish-cuda
COPY mish-cuda /usr/src/mish-cuda
WORKDIR /usr/src/mish-cuda
RUN python setup.py build install
WORKDIR /usr/src

# copy scaledyolov4
COPY ScaledYOLOv4 /usr/src/ScaledYOLOv4

WORKDIR /usr/src/7food-fridge/
COPY . /usr/src/7food-fridge/