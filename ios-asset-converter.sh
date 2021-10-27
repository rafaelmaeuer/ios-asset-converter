#!/bin/bash

# batch resize @3x iOS image assets to @2x and @1x
# copy this script to the folder where the @3x images files live and run "./resizer3x.sh" in terminal.
# this will generate [filename]@2x.[extension] and [filename].[extension] images in the same folder

set -e

ARG=$1

function process() {
  f=$1
  File=${f%%+(/)}    # trim however many trailing slashes exist
  FileName=${File##*/}
  FileExt=${FileName##*.}
  Size="@3x"
  if [[ "$f" == *"$Size"* ]]; then
    echo "Process $FileName"
    convert "$f" -resize 66.6% "${f//@3x/@2x}"
    convert "$f" -resize 33.3% "${f//@3x/}"
  else echo "Adding suffix ${Size} to ${FileName}"
    NewFile="${f%.${FileExt}}${Size}.${FileExt}"
    mv -- "$f" "${NewFile}"
    process $NewFile
  fi
}

echo "Processing start"

if [ -d "${ARG}" ]
  then echo "Input is a directory"
  cd $ARG

  for f in "${ARG}"/*; do
    process $f
  done
elif [ -f "${ARG}" ]
  then echo "Input is a file"
  process $ARG
else echo "Input is not valid"
  exit 1
fi

echo "Processing done"