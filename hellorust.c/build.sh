#!/bin/bash

CUR_DIR=`pwd`
BLD_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${BLD_DIR}

#prepare out dir
mkdir -p ${BLD_DIR}/../out

# build the binary
c++ -O3 -o hellorust_c main.cc 

# copy result
mv hellorust_c ${BLD_DIR}/../out

cd ${CUR_DIR}
