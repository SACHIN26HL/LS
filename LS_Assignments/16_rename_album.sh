#!/bin/bash

mkdir ALBUM
ls
cd ALBUM
pwd
touch new{001..020}.jpg
ls
echo "Renamed files are"
mmv new\* old\#1
ls
cd ..
rm -r ALBUM
ls
