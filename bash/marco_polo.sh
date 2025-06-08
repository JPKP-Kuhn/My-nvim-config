#!/bin/bash
marco () {
  pwd > ~/.marco_location
  echo "Working on $(pwd)"
}

polo () {
  if [ -f ~/.marco_location ]; then
    cd "$(cat ~/.marco_location)"
  else
    echo "No location for marco"
  fi
}
