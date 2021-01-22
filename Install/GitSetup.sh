#!/bin/bash
# install git bash

gitUsername=YourUserNameHere
gitEmail=YourEmailHere

echo "update package index"
#sudo apt update

echo "install git"
sudo apt install git

echo "check git version"
git --version

echo "git install script done"

echo "set com global values"
echo "set username"
git config --global user.name $gitUsername --replace-all
echo "set email"
git config --global user.email $gitEmail
echo "check global settings"
git config --list
