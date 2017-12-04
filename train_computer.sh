#!/bin/sh
DESTDIR=$1
RESULTS=~/embeddedTensorflowNetwork/results/$DESTDIR

mkdir $RESULTS

cd $RESULTS/../images/

rm -r $DESTDIR
nc -l 1234 > $DESTDIR.zip
unzip $DESTDIR.zip -d $DESTDIR



python ../tensorflow/tensorflow/examples/image_retraining/retrain.py
--bottleneck_dir=$RESULTS/bottlenecks --how_many_training_steps 500
--model_dir=../inception --output_graph=$RESULTS/retrained_graph.pb
--output_labels=$RESULTS/retrained_labels.txt
-output_labels=$RESULTS/retrained_labels.txt --image_dir
~/embeddedTensorflowNetwork/images/$DESTDIR
