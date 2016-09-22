#!/bin/sh

DOT_FILES=`echo .* | tr ' ' '\n' | grep -vE '\.$' | grep -vE '^.git$' | tr '\n' ' '`

echo "List of targets: $DOT_FILES"
echo "When link file, I say put."

for file in $DOT_FILES
do
  if [ -e $HOME/$file ]; then
    if [ -L $HOME/$file ]; then
      echo "found symbolick link on HOME: $file"
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

