#!/bin/sh

DESTDIR = $1

cd ./results/

nc -l 1234 > $DESTDIR.zip

unzip $DESTDIR
cd ..
