#!/bin/bash

set -e -o pipefail

pushd $(dirname $0)
dir=$PWD
for file in `ls -a ${dir} | grep -E '^\.[^\.]+'`
do
  f=$(basename $file)
  if [[ $f != ".git" ]]
  then
    ln -sf "${dir}/${file}" "$HOME/$f"
  fi
done
