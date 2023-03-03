#!/bin/bash

function pause(){
   read -p "$*"
}


echo 'Executando: curl -s https://falco.org/repo/falcosecurity-packages.asc | apt-key add -'
pause 'Press [Enter]...'
curl -s https://falco.org/repo/falcosecurity-packages.asc | apt-key add -
clear

echo 'Executando: deb https://download.falco.org/packages/deb stable main" | tee -a /etc/apt/sources.list.d/falcosecurity.list'
pause 'Press [Enter]...'
echo 'deb https://download.falco.org/packages/deb stable main | tee -a /etc/apt/sources.list.d/falcosecurity.list'
clear

echo 'Executando: apt-get update -y'
pause 'Press [Enter]...'
apt-get update -y
clear

echo 'Executando: apt install -y dkms make clang llvm dialog "linux-headers-$(uname -r)"'
pause 'Press [Enter]...'
apt install -y dkms make clang llvm dialog "linux-headers-$(uname -r)"
clear

echo 'Executando: apt-get install -y falco'
pause 'Press [Enter]...'
apt-get install -y falco
clear

echo 'Executando: falco-driver-loader module'
pause 'Press [Enter]...'
falco-driver-loader module
clear

echo 'Executando: wget https://raw.githubusercontent.com/cristianovisk/install_falco_ubuntu/main/falco.yaml -O /etc/falco/falco.yaml'
pause 'Press [Enter]...'
wget https://raw.githubusercontent.com/cristianovisk/install_falco_ubuntu/main/falco.yaml -O /etc/falco/falco.yaml
