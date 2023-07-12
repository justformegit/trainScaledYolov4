#!/usr/bin/env bash
# run on Ubuntu 22.04 LTS

FILE=models/yolov4-csp-320.pt
GDOWN_ID=1C1q2VaxvcU4ctJD33H0_t4rsCJZs6FrM

# if test -f "$FILE"; 
# then
#   echo "$FILE downloaded."
# else
#   REQUIRED_PKG="python3-pip"
#   PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
#   echo Checking for $REQUIRED_PKG: $PKG_OK
#   if [ "" = "$PKG_OK" ]; then
#     echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
#     apt -y install $REQUIRED_PKG
#   fi

#   REQUIRED_PKG="gdown"
#   PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "install ok installed")
#   echo Checking for $REQUIRED_PKG: $PKG_OK
#   if [ "" = "$PKG_OK" ]; then
#     echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
#     pip install gdown
#   fi

#   # download yolov4-csp-320.pt
#   gdown $GDOWN_ID --output models/
# fi

docker run --gpus all -it --rm \
  -v "$(pwd)"/images:/usr/src/images \
  -v "$(pwd)"/models:/usr/src/models \
  jfultr/7food-enginebuild:onnx-trt-0.1.0