#!/bin/sh
ffplay -f video4linux2 -framerate 60 -video_size 1920x1080 -input_format mjpeg /dev/video0

