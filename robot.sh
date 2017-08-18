#!/bin/bash
if [ ! -f "$1" ]; then
  echo "usage: robot.sh <toy-script>"
  exit
fi

input=$(tr ' ' '-' < $1)
for input_line in $input ; do
  command=$(echo $input_line | sed -E 's/(.*)-(.*)/\1/')
  case $command in
    "REPORT")
    echo "$x,$y,$f"
    ;;
    "NORTH")
    ;;
  esac

done
