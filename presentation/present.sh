#!/bin/bash
CUR_DIR=`pwd`
BLD_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd ${BLD_DIR}

# download reveal.js from github
cp index.html ./reveal.js/index.html -f

# build reveal.js
cd ./reveal.js/

# install dependencies
npm start

cd ${CUR_DIR}
