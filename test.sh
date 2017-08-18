#!/bin/bash
set -o errexit

export program_name="./robot.sh"
test_files=$(ls data/)
for file in data/*; do
  if [[ $file == "data/"*"test"* ]]; then # limit to tests
    expected_output=$(tail -1 $file)
    if [[ $expected_output == "Expected output:" ]]; then # expect blank output
      expected_output=""
    fi
    output=$($program_name $file)
    if [[ "$output" == "$expected_output" ]]; then
      echo -e "$file - \e[32mpass\e[0m"
    else
      echo -e "$file - \e[31mFAIL\e[0m"
      echo -e "    expected_output: $expected_output"
      echo -e "    output: $output"
    fi
  fi
done
