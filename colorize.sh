#!/bin/bash
files=Input/*

echo "Creating Directories"
mkdir -p Output

for file in $files
do
	echo "Colorizing "$file" ..."
	filename=$(echo "$file" | cut -f 2 -d '/')
	convert $file -fill yellow Output/$filename
done