#!/bin/bash
# Script to symlink files in ~/dotfiles to the home directory
# Symlinks are not created for README.md or hidden files

files=$(find ~/dotfiles -maxdepth 1 -type f \( ! -iname "readme.md" ! -iname ".*" \))
cd
for full_path in $files
do
  echo "Processing file $full_path"
  file="${full_path##*/}"
  if [ ! -h ~/.$file ]
  then
    echo "Creating symlink for $file..."
    ln -s $full_path .$file
  else
    echo "Symlink already exists for $file"
  fi
done
echo "Finished creating symlinks."

# vim colors
echo "Creating symlinks for vim color files"
mkdir -p ~/.vim/colors
ln -s ~/dotfiles/vim/colors/* ~/.vim/colors/

# vim syntax
echo "Creating symlinks for vim syntax files"
mkdir -p ~/.vim/syntax
ln -s ~/dotfiles/vim/syntax/* ~/.vim/syntax/
