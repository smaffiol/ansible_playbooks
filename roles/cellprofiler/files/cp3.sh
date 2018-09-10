#!/bin/bash

# Run cellprofiler 3 docker image
sudo docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -v /data:/data cellprofiler/cellprofiler:3.0.0 -p $@ -c -r -o /data --plugins-directory=/data
