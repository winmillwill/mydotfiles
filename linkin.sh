#!/bin/bash

set -e -o pipefail

pushd $(dirname $0)
dir=$PWD
for file in `ls -a ${dir}/.*`
do
  f=$(basename $file)
  if [[ f != '.git' ]]
  then
    ln -s "${file}" "$HOME/$f"
  fi
done
