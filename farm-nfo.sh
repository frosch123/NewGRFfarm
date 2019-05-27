#!/bin/sh

P=$(pwd)
GRFCODECDIR=$P/tools/grfcodec

VOLUMES="-v ${GRFCODECDIR}:/tools/grfcodec:ro"
. ./farm-linux.sh
