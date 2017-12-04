#!/usr/bin/python
import os
import sys
import picamera

num = int(sys.argv[1])
dir = sys.argv[2]
camera = picamera.PiCamera()
camera.hflip = True
camera.vflip = True


for i in xrange(0, num):
    camera.capture(dir + "/pic_"+ str(i)+ ".jpg");
    print i


