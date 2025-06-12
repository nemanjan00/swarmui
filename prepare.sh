#!/bin/bash
sudo rm -rf ./import

docker build . -t nemanjan00/swarmui

docker run -v ./import:/workspace --rm -p 7801:7801 --gpus all -ti nemanjan00/swarmui
