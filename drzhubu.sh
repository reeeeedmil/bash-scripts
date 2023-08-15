#!/bin/bash

echo -e "Co mi reknes"
read -p ">" response

while :; do
  if [[ "$response" == "drz hubu" ]]; then
    break
  else
    echo -e "drz hubu"
    read -p ">" response
  fi
done
echo "promin"
