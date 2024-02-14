#!/usr/bin/env bash

# Get the arguments that were passed
args="$@"

# Update the helm dependencies while passing through the flags called on the command line
helm dependency build $args

# if the update failed, exit
if [ $? -ne 0 ]; then
  exit 1
fi

chart_folder=""

# Check if the first argument is provided and does not start with a '-'
if [[ $# -gt 0 && $1 != -* ]]; then
  chart_folder=$1
fi

if [[ -z $chart_folder ]]; then
  chart_folder="."
fi

# Extract all chart.tgz files in the charts directory
for file in "$chart_folder"/charts/*.tgz; do
  echo "Vendoring $file"
  tar -xzf $file -C "$chart_folder"/charts
  rm "$file"
done

echo "Sucessfully Vendored dependencies! *Happy Helming!*"