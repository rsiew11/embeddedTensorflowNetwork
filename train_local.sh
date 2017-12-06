#!/bin/sh
DESTDIR=$1
RESULTS=./results/$DESTDIR

mkdir $RESULTS

echo "made folder"

python ../tensorflow/tensorflow/examples/image_retraining/retrain.py --bottleneck_dir=$RESULTS/bottlenecks --how_many_training_steps 500 --model_dir=../inception --output_graph=$RESULTS/retrained_graph.pb --output_labels=$RESULTS/retrained_labels.txt -output_labels=$RESULTS/retrained_labels.txt --image_dir ./images/$DESTDIR
