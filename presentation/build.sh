#!/bin/bash
CUR_DIR=`pwd`
BLD_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd ${BLD_DIR}

# download reveal.js from github
git clone https://github.com/hakimel/reveal.js.git

# build reveal.js
cd reveal.js

# install dependencies
npm install

cd ${CUR_DIR}
