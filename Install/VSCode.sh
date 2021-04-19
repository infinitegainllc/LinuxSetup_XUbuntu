#!/bin/bash

echo "install VScode"


#old method of installing vs code
###echo "update packages"
####sudo apt update
###sudo apt install software-properties-common apt-transport-https wget
###echo "import the Microsoft GPG key using the following wget command"
###wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
###echo "enable the Visual Studio Code repository"
###sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
###echo "Once the apt repository is enabled , install the latest version of Visual Studio Code"
####sudo apt update
###sudo apt install code

sudo snap install --classic code

echo "list installed vscode extensions that can be copied and ran from terminal to install somewhere else"
code --list-extensions | xargs -L 1 echo code --install-extension

echo "VSCode extension Increment Selection"
code --install-extension albymor.increment-selection # this one didn't work as well
echo "VSCode extension Compare Folders"
code --install-extension moshfeu.compare-folders
echo "VSCode extension C# from Microsoft"
code --install-extension ms-dotnettools.csharp
echo "VSCode extension C# XML Documentation Comments"
code --install-extension k--kato.docomment
echo "VSCode extension Git History"
code --install-extension donjayamanne.githistory


echo "upgrade VSCode"
#sudo apt update
#sudo apt upgrade
