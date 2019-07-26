#!/bin/bash
CUR_DIR=`pwd`
BLD_DIR=$( cd "$( dirname $( realpath "${BASH_SOURCE[0]}") )" && pwd -P)

echo "${BLD_DIR}"
cd ${BLD_DIR}

# download reveal.js from github
cp index.html ./reveal.js/index.html -f
cp content.md ./reveal.js/content.md -f
cp images ./reveal.js/ -rf
# build reveal.js
cd ./reveal.js/

# install dependencies
npm start

cd ${CUR_DIR}
