#!/bin/bash
if [ ! -f "$1" ]; then
  echo "usage: robot.sh <toy-script>"
  exit
fi

echo "Hi Robot"
input=$(tr ' ' '-' < $1)
for input_line in $input ; do
  command=$(echo $input_line | sed -E 's/(.*)-(.*)/\1/')
  echo "  command: $command"

done
