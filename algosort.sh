#!/bin/bash

if [ $# -lt 2 ]; then
  echo "사용법: $0 <prefix> <extension>"
  echo "예시: $0 https://boj.kr/ js"
  exit 1
fi

shopt -s nullglob

PREFIX="$1"
EXTENSION="$2"

for file in *."$EXTENSION"; do
  if [[ $file =~ ^([0-9a-zA-Z_-]+)\.${EXTENSION}$ ]]; then
    echo "${PREFIX}${BASH_REMATCH[1]}"
  fi
done | sort -R > algosort_result.txt