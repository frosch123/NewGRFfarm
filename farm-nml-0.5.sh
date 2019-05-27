#!/bin/sh

P=$(pwd)
GRFCODECDIR=$P/tools/grfcodec
NMLDIR=$P/tools/nml-0.5

VOLUMES="-v ${GRFCODECDIR}:/tools/grfcodec:ro -v ${NMLDIR}:/tools/nml:ro"
. ./farm-linux.sh
