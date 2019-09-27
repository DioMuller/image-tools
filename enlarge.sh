#!/bin/bash
files=Input/*

echo "Creating Directories"
mkdir -p Output

for file in $files
do
	echo "Enlarging "$file" ..."
	filename=$(echo "$file" | cut -f 2 -d '/')
	convert $file -resize 200% Output/$filename
done