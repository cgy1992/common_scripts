#!/bin/bash

set -x

sudo -- sh -c 'apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get autoremove -y; apt-get autoclean -y'

sudo apt install -y flex texinfo bison
sudo apt install -y build-essential
#sudo apt install -y autoconf

ROOT_DIR=$PWD
BINUTILS_SRC=binutils-2.30
MINGW_SRC=mingw-w64-v5.0.3
GCC_SRC=gcc-5.5.0

rm -fR $BINUTILS_SRC
rm -fR $MINGW_SRC
rm -fR $GCC_SRC

wget https://mirror.tochlab.net/pub/gnu/gcc/${GCC_SRC}/${GCC_SRC}.tar.xz
wget https://mirror.tochlab.net/pub/gnu/binutils/${BINUTILS_SRC}.tar.xz
wget https://sourceforge.net/projects/mingw-w64/files/mingw-w64/mingw-w64-release/${MINGW_SRC}.tar.bz2/download -O ${MINGW_SRC}.tar.bz2


tar -xvf ${GCC_SRC}.tar.xz
tar -xvf ${BINUTILS_SRC}.tar.xz
tar -xvf ${MINGW_SRC}.tar.bz2

cd ${GCC_SRC}
./contrib/download_prerequisites 
cd $ROOT_DIR


