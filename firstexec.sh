#! /bin/bash

cp /home/jenkins/*.war /home/jenkins/workspace/doc-build


docker build -t webserver:v$(BUILD_NUMBER) .


docker run -it --rm -p 9095:8080 --name webproject webserver:v$(BUILD_NUMBER) 
