#!/bin/bash

# Run the Java program and capture the output
output=$(java LoopingStatementsDemo.java < tests/input.txt)

# Expected output (using tr to normalize newlines)
expected=$(cat tests/output.txt | tr -d '\r') # Remove carriage returns

# Normalize newlines in the actual output as well
output=$(echo "$output" | tr -d '\r') # Remove carriage returns


# Use diff for robust comparison (ignoring whitespace)
diff -Bw <(echo "$expected") <(echo "$output") > diff.txt

if [ -s diff.txt ]; then
  echo "Tests failed"
  echo "Diff:"
  cat diff.txt
  rm diff.txt
  exit 1
else
  echo "Tests passed"
  rm diff.txt
  exit 0
fi