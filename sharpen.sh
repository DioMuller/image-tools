#!/bin/bash
files=Input/*

echo "Creating Directories"
mkdir -p Output

for file in $files
do
	echo "Sharpening "$file" ..."
	filename=$(echo "$file" | cut -f 2 -d '/')
	convert $file -sharpen 0x3 Output/$filename
done