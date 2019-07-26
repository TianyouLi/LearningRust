#!/bin/bash
CUR_DIR=`pwd`
BLD_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd ${BLD_DIR}

#prepare out dir
mkdir -p ${BLD_DIR}/../out

if [ -e ${BLD_DIR}/reveal.js ]
then
		(cd ${BLD_DIR}/reveal.js && git pull)
else
		# download reveal.js from github
		git clone https://github.com/hakimel/reveal.js.git
fi

# build reveal.js
cd reveal.js

# install dependencies
npm install

# make symbolic link to server script
ln -sf ${BLD_DIR}/present.sh ${BLD_DIR}/../out/present.sh

cd ${CUR_DIR}
