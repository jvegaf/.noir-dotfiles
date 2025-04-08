#!/bin/sh

IMAGE=/tmp/i3lock.png
BLURTYPE="2x8"

maim $IMAGE
magick $IMAGE -blur $BLURTYPE $IMAGE
i3lock -e -i $IMAGE
rm $IMAGE
