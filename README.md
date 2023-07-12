# # trainScaledYolov4
# Download the dataset
```
!pip install roboflow

from roboflow import Roboflow
rf = Roboflow(api_key="**********")
project = rf.workspace("workspace_name").project("project_name")
dataset = project.version(#).download("yolov4scaled")
```

or get it from your dataset collector 
# Build a container
Make .sh files executable by command ```chmod +x filename.sh```
Run the file  ```./1-train-env-build.sh```
# Run the container
Run the file ```./2-train-env-run.sh```
#Train the model
```
cd ScaledYOLOv4
python train.py --batch 8 --epochs 100 --data 'data.yaml' --cfg 'models/yolov4-csp.yaml' --weights ''  --cache
```

bath sizes:
{1, 2, 4, 8, 16} - slow 

{ [32, 64],[ 128, 256] }- Good starters

[32, 64] - CPU

[128, 256] - GPU for more boost
