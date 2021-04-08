#!/bin/bash

sudo apt update
sudo apt install -y python3-pip
cd CI-Pipeline-Appclone/frontend
pip3 install -r requirements.txt
python3 app.py
