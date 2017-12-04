#!/bin/sh

DESTDIR=$1

IMG_LOC=~/embeddedTensorflowNetwork/images/$DESTDIR/test_img.jpg
RESULTS_LOC=~/embeddedTensorflowNetwork/results/$DESTDIR

echo "netcat read"

nc -l -w 5 1234 > $IMG_LOC

python ~/tensorflow/tensorflow/examples/image_retraining/label.py $RESULTS_LOC $IMG_LOC > results.txt
cat results.txt

echo "netcat send"
nc 128.237.234.198 1234 < results.txt
