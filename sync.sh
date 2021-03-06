#!/bin/bash

function sync() {
  if [ ! -d ~/.logs ]; then
    mkdir ~/.logs
    chmod 700 ~/.logs
  fi

  rsync --exclude ".git/" \
        --exclude "install.sh" \
        --exclude "README.md" \
        -av . ~
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  sync
else
  read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    sync
  fi
fi
