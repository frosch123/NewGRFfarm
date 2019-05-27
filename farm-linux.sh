#!/bin/sh

P=$(pwd)
PRJDIR=$P/$1

VOLUMES="$VOLUMES -v ${PRJDIR}:/project"

ARGS="-u farm --network none --ulimit cpu=600 -m 1500m"

if [ "$2" = "-enter" ]
then docker run -it     ${VOLUMES} openttdcoop/farm-linux /bin/bash
else docker run ${ARGS} ${VOLUMES} openttdcoop/farm-linux make
fi

docker container prune -f
