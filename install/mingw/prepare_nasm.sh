#!/bin/bash

set -x

ROOT_DIR=$PWD
WORK_DIR=$ROOT_DIR/_build_nasm

mkdir -p && cd ${WORK_DIR} || exit 1

wget --timestamping http://www.nasm.us/pub/nasm/releasebuilds/2.13.03/nasm-2.13.03.tar.xz

tar -xvf nasm-2.13.03.tar.xz

cd nasm-2.13.03/

./configure && make && sudo make install

cd $ROOT_DIR