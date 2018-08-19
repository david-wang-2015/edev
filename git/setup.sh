#!/bin/bash                                                                 
echo "Enter git/setup.sh"
sudo apt-get update
sudo apt-get install -y git
if [ -f ~/.gitconfig ]; then
	rand = $RANDOM
	echo "~/.gitconfig existed, backup as $rand.gitconfig and overwrite."
	cp ~/.gitconfig ~/$rand.gitconfig
fi	
cp .gitconfig ~/
