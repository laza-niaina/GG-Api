#!/bin/bash     

START="["
END="]"

TOKENS=""

while read -r line; do
  if [ -z "$TOKENS" ]; then
    TOKENS="\"$line\""
  else
    TOKENS+=",\"$line\""
  fi
done < access_tokens.txt

echo "$START$TOKENS$END" > access_tokens.json
