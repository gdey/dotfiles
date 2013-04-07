#!/bin/bash -x

# This objective of this program is to recreate links to point to the files.
# This script is going to be really dumb to start with and hopfully get smarter
#   over time.


# We assume that the dotfile dir is in the home directory.
DOTFILESDIR=${HOME}/dotfiles

# profile

ln -sf ${DOTFILESDIR}/profile/profile ${HOME}/.profile

# git

ln -sf ${DOTFILESDIR}/git/gitconfig ${HOME}/.gitconfig
ln -sf ${DOTFILESDIR}/git/gitignore_global ${HOME}/.gitignore_global
ln -sf ${DOTFILESDIR}/git/gitk ${HOME}/.gitk

#screen

ln -sf ${DOTFILESDIR}/screen/screenrc ${HOME}/.screenrc

#zsh

ln -sf ${DOTFILESDIR}/zsh/zshrc ${HOME}/.zshrc

#vim

ln -sf ${DOTFILESDIR}/vim ${HOME}/.vim
ln -sf ${DOTFILESDIR}/vim/vimrc ${HOME}/.vimrc
ln -sf ${DOTFILESDIR}/vim/gvimrc ${HOME}/.gvimrc

# perl
ln -sf ${DOTFILESDIR}/perl/perltidyrc ${HOME}/.perltidyrc

# tmux
ln -sf ${DOTFILESDIR}/tmux/tmux.conf ${HOME}/.tmux.conf

# a bit of setup
mkdir -p ${DOTFILESDIR}/vim/backup/../tmp

