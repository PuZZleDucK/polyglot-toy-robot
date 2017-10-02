#!/bin/bash
if [ ! -f "$1" ]; then
  echo "usage: robot.sh <toy-script>"
  exit
fi

function place_robot {
  true
  if (( $1 >= 0 && $1 < 5 )); then
    if (( $1 >= 0 && $1 < 5 )); then
      x=$1
      y=$2
      f=$3
    fi
  fi
}

function report {
  if [[ $f ]]; then
    echo -n "$x,$y,$f"
  fi
}
function move_robot {
  case $f in
    "NORTH")
      if (( $y < 4 )); then
        y=$((y + 1))
      fi
    ;;
    "SOUTH")
      if (( $y > 1 )); then
        y=$((y - 1))
      fi
    ;;
    "EAST")
      if (( $x < 4 )); then
        x=$((x + 1))
      fi
    ;;
    "WEST")
      if (( $x > 1 )); then
        x=$((x - 1))
      fi
    ;;
  esac
}

function turn_left {
  case $f in
    "NORTH")
      f="WEST"
    ;;
    "SOUTH")
      f="EAST"
    ;;
    "EAST")
      f="NORTH"
    ;;
    "WEST")
      f="SOUTH"
    ;;
  esac
}

function turn_right {
  case $f in
    "NORTH")
      f="EAST"
    ;;
    "SOUTH")
      f="WEST"
    ;;
    "EAST")
      f="SOUTH"
    ;;
    "WEST")
      f="NORTH"
    ;;
  esac
}

input=$(tr ' ' '-' < $1)
for input_line in $input; do
  command=$(echo $input_line | sed -E 's/(.*)-(.*)/\1/')
  case $command in
    "REPORT")
      report
    ;;
    "PLACE")
      input_x=$(echo $input_line | sed -E 's/(.*)-(.*),(.*),(.*)/\2/')
      input_y=$(echo $input_line | sed -E 's/(.*)-(.*),(.*),(.*)/\3/')
      input_f=$(echo $input_line | sed -E 's/(.*)-(.*),(.*),(.*)/\4/')
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
