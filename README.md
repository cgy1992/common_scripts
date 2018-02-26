# common build and test scripts for AMF integration tests

## reference links:

#### AMF page:
https://github.com/GPUOpen-LibrariesAndSDKs/AMF

#### MS Manual: Install the Windows Subsystem for Linux (WSL)
https://docs.microsoft.com/en-us/windows/wsl/install-win10

## Install on Ubuntu (WSL)

#### Update all packages

sudo -- sh -c 'apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get autoremove -y; apt-get autoclean -y'

#### Install build environment & mc
sudo apt-get install build-essential

sudo apt-get install make

sudo apt install mc

#### Install mingw:
sudo apt-get install mingw-w64

sudo apt-get install libz-mingw-w64-dev

#### Build & Install nasm:
wget http://www.nasm.us/pub/nasm/releasebuilds/2.13.03/nasm-2.13.03.tar.xz

tar -xvf nasm-2.13.03.tar.xz

cd nasm-2.13.03/

./config && make && sudo make install

#### may be you will need:

sudo apt install libconfig9

sudo apt install mingw-w64-tools

sudo apt install gdb-mingw-w64

sudo apt install mercurial
