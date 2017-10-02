#!/bin/bash
set -o errexit
set -e

program_name="./lib/bash/robot.sh"
test_folder="test/fixtures/files/"
test_files=$(ls $test_folder)
for file in $test_files; do
  output=$($program_name $test_folder$file)
  expected_output=$(tail -1 $test_folder$file)
  if [[ $expected_output == "Expected output:" ]]; then
    expected_output="" # No output to find, expect blank output
  fi
  if [[ "$output" == "$expected_output" ]]; then
    echo -e "$file - \e[32mpass\e[0m"
  else
    echo -e "$file - \e[31mFAIL\e[0m"
    echo -e "    expected_output: $expected_output"
    echo -e "    output: $output"
    exit 999
  fi
done
