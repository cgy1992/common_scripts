#!/bin/bash

set -x

wget http://www.nasm.us/pub/nasm/releasebuilds/2.13.03/nasm-2.13.03.tar.xz

tar -xvf nasm-2.13.03.tar.xz

cd nasm-2.13.03/

./configure && make && sudo make install
