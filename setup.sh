#!/bin/sh

DOT_FILES=".vimrc .bashrc"

echo "When link file, I say put."

for file in $DOT_FILES
do
  echo "try link $file"
  if [ -e $HOME/$file ]; then
    if [ -L $HOME/$file ]; then
      echo "found file on HOME: $file"
      continue
    fi
    if [ -d $HOME/$file ]; then
      echo "found dirctory on HOME: $file"
      continue
    fi
    echo "found raw(normal) file."
    mv $HOME/$file $HOME/$file.autobackup
    echo "backup old file to: $file.autobackup"
  fi
  ln -s $HOME/dotfiles/$file $HOME/$file
  echo "put symbolic link: $file"
done
