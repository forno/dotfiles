#!/bin/sh

filter_out_ignore(){
  while read line
  do 
    [ "$line" = '.' ] ||
    [ "$line" = '..' ] ||
    [ "$line" = '.git' ] ||
    [ "$line" = '.gitignore' ] ||
    [ "$line" = '.gitmodules' ] &&
      continue
    echo $line
  done
}

DOT_FILES=`echo .* | tr ' ' '\n' | filter_out_ignore | tr '\n' ' '`
echo "List of targets: $DOT_FILES"
echo "When link file, I say put."
cd `dirname $0`
DOT_FILES_DIR=`pwd`

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
  ln -s "$DOT_FILES_DIR/$file" "$HOME/$file"
  echo "put symbolic link: $file"
done

