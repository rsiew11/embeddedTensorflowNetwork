#!/bin/sh

DESTDIR=~/743scripts/images/$1/test_img.jpg

raspistill -vf -hf -o $DESTDIR

nc -q 0 128.237.183.153 1234 < $DESTDIR

nc -l 1234 > results.txt

cat results.txt



