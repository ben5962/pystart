#!/bin/bash

if [ -e $HOME/.vim ] 
then
pushd .
cd $HOME/.vim
echo "$HOME/.vim existe. je télécharge bash-support." 
wget "http://www.vim.org/scripts/download_script.php?src_id=19532" -O bash-support.zip
echo "je décompresse bash support"
unzip bash-support.zip
popd
else 
echo "$HOME/.vim n existe pas"
fi

