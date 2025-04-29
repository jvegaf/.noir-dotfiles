#!/bin/bash
used=`nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader | cut -b 1-2 | cut -b 1-2 | tr -d '.'`
echo $used

if [ "$used" -lt 11 ]
then
  echo "_"
elif [ $used -lt 22 ]
then
  echo "▁"
elif [ $used -lt 33 ]
then
  echo "▂"
elif [ $used -lt 44 ]
then
  echo "▃"
elif [ $used -lt 55 ]
then
  echo "▄"
elif [ $used -lt 66 ]
then
  echo "▅"
elif [ $used -lt 77 ]
then
  echo "▆"
elif [ $used -lt 88 ]
then
  echo "▇"
else
  #echo "█"
  echo "%{F#f00} ▇ %{F-}"
fi
