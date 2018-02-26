# common build and test scripts for AMF integration tests

## reference links:

#### AMF page:
https://github.com/GPUOpen-LibrariesAndSDKs/AMF

#### MS Manual: Install the Windows Subsystem for Linux (WSL)
https://docs.microsoft.com/en-us/windows/wsl/install-win10

## Install on Ubuntu (WSL)

Update all packages:
sudo -- sh -c 'apt-get update; apt-get upgrade -y; apt-get dist-upgrade -y; apt-get autoremove -y; apt-get autoclean -y'
sudo apt install mc


Install mingw:
sudo apt-get install mingw-w64

#### may be you will need:
sudo apt-get install libz-mingw-w64-dev

sudo apt install libconfig9

sudo apt install build-essential

sudo apt install mingw-w64-tools

sudo apt install gdb-mingw-w64

sudo apt install mercurial
