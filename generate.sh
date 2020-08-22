#!/usr/bin/env bash

rm -f README.md

username=$(git config github.user) 
repo="goldman-sachs-quantitative-strategies-research-notes"

echo "Publications:" >> README.md
for file in *.pdf; do
  description=$(echo $file | cut -d '.' -f 1 | tr '_' ':')
  encoded=$(ruby -e 'puts URI.encode ARGV[0]' "$file")
  link="https://github.com/$username/$repo/raw/master/$encoded"
  echo "- ![$description]($link)" >> README.md
done
