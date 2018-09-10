#!/bin/bash

# Run cellprofiler 2 docker image
sudo docker run --net=host --env="DISPLAY" --volume="$HOME/.Xauthority:/root/.Xauthority:rw" -v {{ data_path }}:{{ data_path }} {{ cp_docker }} -p $@ -c -r -o {{ data_path }} --plugins-directory={{ data_path }}

