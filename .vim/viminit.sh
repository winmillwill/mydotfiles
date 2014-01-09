#! /bin/bash

set -ex

vimdir=`dirname $0`
mkdir -p $vimdir/bundle
mkdir -p $vimdir/tmp/{undo,backup,swap}
if [[ ! -d $vimdir/bundle/vundle ]]
then
  curl -L https://github.com/gmarik/vundle/archive/master.tar.gz | gtar xz -C $vimdir/bundle --transform s/vundle-master/vundle/
fi
vim +BundleInstall +qall
