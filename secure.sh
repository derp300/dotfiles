#!/bin/bash

if [ "$1" = "e" ];
then
    from="decrypted"
    to="encrypted"
    args="'A-Za-z' 'N-ZA-Mn-za-m'"
elif [ "$1" = "d" ];
then
    to="decrypted"
    from="encrypted"
    args="'N-ZA-Mn-za-m' 'A-Za-z'"
else
    exit 0
fi


if [ ! -d $from ]; then
  exit 0
fi

if [ ! -d $to ]; then
  mkdir $to
fi

rm -rf $to/*
cp -r $from/* $to/

for filename in $(find $from/ -type f 2>/dev/null)
do
    newfilename=$(echo $filename | sed "s/$from/$to/")
    cat $filename | tr $args > $newfilename
done
