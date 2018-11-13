#!/bin/bash

#hochu chtob file bil secure.sh i po kluchu reshalos kuda peregonyat files

from="decrypted"
to="encrypted"
args="'A-Za-z' 'N-ZA-Mn-za-m'"

if [ ! -d $from ]; then
  exit 0
fi

rm -rf $to/*
cp -r $from/* $to/

for filename in $(find $from/ -type f 2>/dev/null)
do
    newfilename=$(echo $filename | sed "s/$from/$to/")
    cat $filename | tr $args > $newfilename
done
