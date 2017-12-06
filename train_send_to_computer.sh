#!/bin/sh
DESTDIR=$1

cd ~/743scripts/images

rm -r *.jpg
#rm -r $DESTDIR/*.jpg

#zip -r $DESTDIR.zip $DESTDIR

echo "zipped"
nc -q 0 128.237.138.63 1234 < $DESTDIR.zip

nc -l 1234 > ack.txt

cat ack.txt

cd ..


