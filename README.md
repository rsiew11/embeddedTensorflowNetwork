to use this install this git repo in your home dir
also install tensorflow examples to ur home dir
to use on RPI 3,,,git checkout r1.3

copy label.py to the folder at /tensorflow/tensorflow/examples/image_retraining/


run
collect_images.sh num_pics proj_name label_name
train_local.sh proj_name
test_local.sh proj_name
