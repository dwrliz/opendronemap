#! /bin/bash
apt-get update
apt-get install docker-compose -y
apt-get install --upgrade docker -y
apt-get install python-pip -y
git clone https://github.com/OpenDroneMap/WebODM --config core.autocrlf=input --depth 1
cd WebODM
./webodm.sh start