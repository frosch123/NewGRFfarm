#!/bin/sh

docker build --build-arg uid=1000 --build-arg gid=1000 -t openttdcoop/farm-linux docker-farm-linux

./farm-c.sh tools/grfcodec
./farm-c.sh tools/nml-0.4
./farm-c.sh tools/nml-0.5
