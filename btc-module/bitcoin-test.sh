#!/bin/bash -e

if [ "$1" == "opt" ];
then
  make clean
  make OPTIMIZED=1 SGX_MODE=SIM
elif [ "$1" == "simple" ];
then
  make clean
  make
fi

./exec.sh
