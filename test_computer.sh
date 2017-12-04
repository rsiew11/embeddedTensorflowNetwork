#!/bin/sh

DESTDIR=$1

IMG_LOC=~/embeddedTensorflowNetwork/images/$DESTDIR/test_img.jpg
RESULTS_LOC=~/embeddedTensorflowNetwork/results/$DESTDIR

raspistill -vf -hf -o $IMG_LOC

python ~/tensorflow/tensorflow/examples/image_retraining/label.py $RESULTS_LOC $IMG_LOC
