#!/bin/bash

#####################################################################
#
# script name: file_organizer.sh
# created in: 06/23/22
# modified in: 15:08:38
#
# summary: Organizes files in a directory by extension and modification date.
#                                               developed by: bates
#####################################################################


function show_help() {
    echo "----------- HELP GUIDE ----------------------------------------------------------------------------"
    echo ""
    echo "Usage: ./file_organizer.sh [OPTIONS] <directory>"
    echo ""
    echo "Organizes files in a directory by extension and modification date."
    echo ""
    echo "Options:"
    echo "  -h, --help    Show this help message and exit."
    echo ""
    echo "--------------------------------------------------------------------------------------------------"
}

if [[ $1 == "--help" ]] || [[ $1 == "-h" ]]; then
  show_help
  exit 0
fi

if [ -z "$1" ]; then
  echo "Please specify a directory to monitor."
  show_help
  exit 1
fi

directory="$1"
echo "Directory $directory was monitored at $(date)" >> log.txt

if [ ! -d "$directory" ]; then
  mkdir -p "$directory"
fi

while true; do
  inotifywait -e create,move,delete -r "$directory" >> log.txt

  for file in "$directory"/*; do
    if [ -f "$file" ]; then
      extension="${file##*.}"

      modified=$(stat -c %y "$file" | cut -d ' ' -f 1 | sed 's/-//g')

      dest_dir="$directory/$modified/$extension"
      if [ ! -d "$dest_dir" ]; then
        mkdir -p "$dest_dir"
      fi

      mv "$file" "$dest_dir"
    fi
  done
done
