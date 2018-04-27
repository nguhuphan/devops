#!/usr/bin/env bash

CWD=`pwd`

makeSymlink() {
  for dir in inventory/**/
  do
    if [ ! -n "`echo $dir | grep shared`" ]; then
      cd $CWD/$dir
      rm -f ec2* || true
      ln -s $CWD/inventory/shared/ec2.py ec2.py
    fi
  done
}

makeSymlink
