#! /bin/bash

cp /home/jenkins/*.war /home/jenkins/workspace/doc-build


sudo docker build -t webserver:v10 .


sudo docker run -d --rm -p 9095:8080 --name webproject webserver:v10 
