#!/bin/bash
if [ ! -f "$1" ]; then
  echo "usage: robot.sh <toy-script>"
  exit
fi

function place_robot {
  echo $1
  echo $2
  echo $3
}

function move_robot {
  echo "move"
}

function turn_left {
  echo "turn"
}

function turn_right {
  echo "turn"
}

input=$(tr ' ' '-' < $1)
for input_line in $input ; do
  command=$(echo $input_line | sed -E 's/(.*)-(.*)/\1/')
  case $command in
    "REPORT")
      echo "$x,$y,$f"
    ;;
    "PLACE")
      input_x=$(echo $input_line | sed -E 's/(.*)-(.*),(.*),(.*)/\2/')
      input_y=$(echo $input_line | sed -E 's/(.*)-(.*),(.*),(.*)/\3/')
      input_f=$(echo $input_line | sed -E 's/(.*)-(.*),(.*),(.*)/\4/')
      # echo "PLACE INPUTS $input_x,$input_y,$input_f"
      place_robot $input_x $input_y $input_f
    ;;
    "MOVE")
      move_robot
    ;;
    "LEFT")
      turn_left
    ;;
    "RIGHT")
      turn_right
    ;;
  esac
done
