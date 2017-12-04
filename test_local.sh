#!/bin/sh

DESTDIR=$1

IMG_LOC=~/743scripts/images/$DESTDIR/test_img.jpg
RESULTS_LOC=~743scripts/results/$DESTDIR

raspistill -vf -hf -o $IMG_LOC

python ~/tensorflow/tensorflow/examples/image_retraining.py $RESULTS_LOC $IMG_LOC
