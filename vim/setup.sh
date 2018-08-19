#!/bin/bash                                                                 
echo "Enter vim/setup.sh"
sudo apt-get update
sudo apt-get install -y vim ack-grep

# Create the folder for plugins
mkdir -p ~/.vim/bundle                                                      
pushd ~/.vim/bundle
if [ -d Vundle.vim ]; then
	echo "Vundle existed, skip."
else
	git clone https://github.com/VundleVim/Vundle.vim.git 
fi
popd

# Copy .vimrc
if [ -f ~/.vimrc ]; then
	rand = $RANDOM
	echo "~/.vimrc existed, backup as $rand.vimrc and overwrite."
	cp ~/.vimrc ~/$rand.vim.rc
fi	
cp .vimrc ~/

# Install the vim plugins
vim -c PluginInstall
