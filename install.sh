#!/usr/bin/env bash 

git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.dotfiles/.oh-my-zsh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.dotfiles/.vim/bundle/Vundle.vim

git clone https://github.com/tmux-plugins/tmux-resurrect.git ~/.dotfiles/.tmux-resurrect
git clone https://github.com/tmux-plugins/tmux-continuum.git ~/.dotfiles/.tmux-continuum
git clone https://github.com/tmux-plugins/tmux-battery.git ~/.dotfiles/.tmux-battery

mkdir ~/.dotfiles/.vim/backup
mkdir ~/.dotfiles/.vim/tmp

ln -s .dotfiles/.oh-my-zsh ~/
ln -s .dotfiles/.tmux.conf ~/
ln -s .dotfiles/.vim ~/
ln -s .dotfiles/.zshrc ~/

vim +BundleInstall! +qall
