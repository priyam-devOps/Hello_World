#!/bin/bash

echo -e "\033[32mSTART DEPLOYING------START\033[0m"

echo "  [ mvn clean install ]"
mvn clean install

echo "  [ docker stop portfolio-container ]"
docker stop portfolio-container

echo "  [ docker rm portfolio-container ]"
docker rm portfolio-container

echo "  [ docker rmi portfolio-image ]"
docker rm portfolio-image

echo "  [ docker build portfolio-image ]"
docker build  -t portfolio-image .

echo "  [docker run portfolio-container ]"
docker run -d --name portfolio-container -p 8088:8080 portfolio-image

echo -e "\033[32mSTART DEPLOYING------END \033[0m"


