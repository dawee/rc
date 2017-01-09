#!/bin/sh

rm -rf ~/.vim ~/.vimrc ~/.daweerc

echo "install Vundle..."
git clone -q https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "install daweerc..."
git clone -q https://github.com/dawee/rc.git ~/.daweerc
git clone -q https://github.com/sickill/vim-monokai ~/.daweerc/vim-monokai
cp -r ~/.daweerc/vim-monokai/colors ~/.vim/
ln -s ~/.daweerc/.vimrc ~/.vimrc
echo "install plugins..."
vim -c "PluginUpdate" -c "q" -c "q"
echo "done !"
