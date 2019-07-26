#!/bin/bash

CUR_DIR=`pwd`
BLD_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${BLD_DIR}

#prepare out dir
mkdir -p ${BLD_DIR}/../out

# build the binary
cargo build --release

# copy result
cp -f target/release/hellorust ${BLD_DIR}/../out

cd ${CUR_DIR}
