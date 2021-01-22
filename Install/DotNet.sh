#!/bin/bash

echo "Check the .Net runtimes currently installed on the system."
dotnet --list-runtimes

echo "install the SDK"
sudo snap install dotnet-sdk

echo "run the install script from Microsoft"
echo "found here: https://docs.microsoft.com/en-us/dotnet/core/install/linux-scripted-manual#scripted-install"
bash dotnet_install.sh

