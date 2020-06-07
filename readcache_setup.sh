#!/bin/bash
# Setting up the read cache
# Made by Alex Andreba

# Read Cache Setup Arguments:
# $1 --> Directory to cache
# $2 --> Cache directory
# $3 --> Cache max size

if [ -d "$1" ]; then
  # Directory to cache exists
  echo "Directory ${1} found"
  if [ -d "$2" ]; then
    # Caching directory exists
    echo "Directory ${2} found"
  else
    # Caching directory doesn't exist
    echo "Warning: ${2} not found"
    while true; do
      read -p "Create directory ${2}? (y/n) " yn
      case $yn in
          [Yy]* ) mkdir $2; break;;
          [Nn]* ) exit 1;;
          * ) echo "Please select a correct answer";;
      esac
    done
   fi
else
  # Directory to cache doesn't exist
  echo "Error: ${1} not found"
  exit 1
fi
