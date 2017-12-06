#!/bin/sh

DESTDIR=$1

cd ~/embeddedTensorflowNetwork/results/$DESTDIR

zip -r $DESTDIR.zip $DESTDIR

#send

echo "netcat send"
nc 128.237.234.198 1234 < $DESTDIR.zip
