#!/bin/bash

if [[ "" == "$(command -v brew)" ]]; then
  echo 'Installing homebrew'
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo 'Updating homebrew'
  brew update
fi

if [[ "" == "$(command -v ansible)" ]]; then
  echo 'Installing ansible'
  brew install ansible
else
  echo 'Ansible installed'
fi

if [[ "" == "$(command -v m)" ]]; then
  echo 'Installing m-cli'
  brew install m-cli
else
  echo 'm-cli installed'
fi

if [[ ! -e $HOME/.conf ]]; then
  echo 'Downloading config'
  git clone git@tgithub.com:relativesanity/.conf $HOME/.conf
else
  echo 'Config downloaded'
fi

echo ''
echo 'Updating config'

cd $HOME/.conf
git pull origin master

echo ''
echo 'Ready to play'
