#!/bin/bash

# batch resize @3x iOS image assets to @2x and @1x
# copy this script to the folder where the @3x images files live and run "./resizer3x.sh" in terminal.
# this will generate [filename]@2x.[extension] and [filename].[extension] images in the same folder

set -e

CWD=$1
cd $CWD
echo "start"

for f in "${CWD}"/*; do

  if [[ $f == *@3x* ]];
    File=${f%%+(/)}    # trim however many trailing slashes exist
    FileName=${File##*/}
    echo "process $FileName"
    then
    convert "$f" -resize 66.6% "${f//@3x/@2x}"
    convert "$f" -resize 33.3% "${f//@3x/}"
  fi

done

echo "done"