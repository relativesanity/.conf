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

echo 'Ready to play'
