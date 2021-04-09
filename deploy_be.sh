#!/bin/bash

cd CI-Pipeline-Appclone/Miscellaneous/
kubectl delete pods --all -n Nodegroup
kubectl apply -f deploy_app_be.yaml

sudo apt update
sudo apt install -y python3-pip
cd CI-Pipeline-Appclone/backend 
pip3 install -r requirements.txt
python3 app.py
