#!/bin/bash

mkdir -p ./deployment/container-files

cp ./build/distributions/uberJar/app.jar ./deployment/container-files/app.jar

cd ./deployment

docker build -t kubanische-kaninchenzuechterei .