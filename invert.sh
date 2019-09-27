#!/bin/bash
files=Input/*

echo "Creating Directories"
mkdir -p Output

for file in $files
do
	echo "Inverting "$file" ..."
	filename=$(echo "$file" | cut -f 2 -d '/')
	convert $file -channel RGB -negate Output/$filename
done