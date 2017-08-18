#!/bin/bash
if [ ! -f "$1" ]; then
  echo "usage: robot.sh <toy-script>"
  exit
fi

function place_robot {
  # echo $1
  # echo $2
  # echo $3
  true
  if (( $1 >= 0 && $1 < 5 )) ; then
    if (( $1 >= 0 && $1 < 5 )) ; then
      x=$1
      y=$2
      f=$3
    fi
  fi
}

function move_robot {
  case $f in
    "NORTH")
      if (( $y < 5 )) ; then
        y=$((y + 1))
      fi
    ;;
    "SOUTH")
      if (( $y > 1 )) ; then
        y=$((y - 1))
      fi
    ;;
    "EAST")
      if (( $x < 5 )) ; then
        x=$((x + 1))
      fi
    ;;
    "WEST")
      if (( $x > 1 )) ; then
        x=$((x - 1))
      fi
    ;;
  esac
}

function turn_left {
  true
}

function turn_right {
  true
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
