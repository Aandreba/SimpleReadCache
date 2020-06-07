#!/bin/bash
# Setting up the read cache
# Made by Alex Andreba

# Read Cache Setup Arguments:
# $1 --> Directory to cache
# $2 --> Cache directory
# $3 --> Cache max size

if [ -d "$1" ]; then
  # Directory to cache exists
  if [ -d "$2" ]; then
    # Caching directory exists
  else
    # Caching directory doesn't exist
    echo "Warning: '${2} not found"
else
  # Directory to cache doesn't exist
  echo "Error: '${1}' not found"
  exit 1
fi
