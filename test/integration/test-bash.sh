#!/bin/bash
set -o errexit

export program_name="./robot.sh"
test_files=$(ls data/)
for file in data/*; do
  if [[ $file == "data/"* ]]; then
    output=$($program_name $file)
    expected_output=$(tail -1 $file)
    if [[ $expected_output == "Expected output:" ]]; then
      # There was no output to find, expect blank output
      expected_output=""
    fi
    if [[ "$output" == "$expected_output" ]]; then
      echo -e "$file - \e[32mpass\e[0m"
    else
      echo -e "$file - \e[31mFAIL\e[0m"
      echo -e "    expected_output: $expected_output"
      echo -e "    output: $output"
    fi
  fi
done
