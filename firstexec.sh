#! /bin/bash

cp /home/jenkins/*.war /home/jenkins/workspace/doc-build


sudo docker build -t webserver:v$BUILD_NUMBER .


sudo docker run -it --rm -p 9095:8080 --name webproject webserver:v$(BUILD_NUMBER) 
