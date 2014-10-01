#!/bin/bash -x

#  This is to setup a brand new box; Mac OSX box.

# First let's install homebrew.

ls vault/homebrew_github_key
if [ $? != 0 ] ; then
   open ../vault.sparseimage
fi
echo "Please install XCode if you haven't already."
echo "Please install git if you haven't already."
read
export HOMEBREW_GITHUB_API_TOKEN=$(cat vault/homebrew_github_key)
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew install tmux
brew install CMake
brew install hg
brew install macvim --override-system-vim

# The following I have not tested.
#brew install go --cross-compile-all
#brew install git 


