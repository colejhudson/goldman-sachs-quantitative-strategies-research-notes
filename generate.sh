#!/usr/bin/env bash

username=$(git config github.user) 
repo="goldman-sachs-quantitative-strategies-research-notes"

for file in *.pdf; do
  description=$(echo $file | cut -d '.' -f 1 | tr '_' ':')
  link="https://github.com/$username/$repo/raw/master/$file"
  echo "![$description]($link)" >> README.md
done
