#!/bin/bash
files=Input/*

echo "Creating Directories"
mkdir -p Output

for file in $files
do
	echo "Inverting "$file" ..."
	filename=$(echo "$file" | cut -f 2 -d '/')
	no_ext=$(echo "$filename" | cut -f 1 -d  '.')
	convert $file Output/$no_ext.xpm
done