#!/bin/bash
files=Input/*

echo "Creating Directories"
mkdir -p Output

mkdir -p Output/Android
mkdir -p Output/Android/drawable-xxxhdpi
mkdir -p Output/Android/drawable-xxhdpi
mkdir -p Output/Android/drawable-xhdpi
mkdir -p Output/Android/drawable-hdpi
mkdir -p Output/Android/drawable-mdpi

mkdir -p Output/iOS

for file in $files
do
	echo "Resizing "$file
	
	echo "- Getting Image Data"
	filename=$(echo "$file" | cut -f 2 -d '/')
	name=$(echo "$filename" | cut -f 1 -d '.')
	ext=$(echo "$filename" | cut -f 2 -d '.')
	
	echo $filename
	
	echo "- Creating Android Images"
	echo "-- xxxhdpi"
	cp $file Output/Android/drawable-xxxhdpi/$filename
	echo "-- xxhdpi"
	convert $file -resize 75% Output/Android/drawable-xxhdpi/$filename
	echo "-- xhdpi"
	convert $file -resize 50% Output/Android/drawable-xhdpi/$filename
	echo "-- hdpi"
	convert $file -resize 38% Output/Android/drawable-hdpi/$filename	
	echo "-- mdpi"
	convert $file -resize 25% Output/Android/drawable-mdpi/$filename
	
	echo "- Creating iOS Images"	
	echo "-- @4x"
	cp Output/Android/drawable-xxxhdpi/$filename Output/iOS/$name@4x.$ext
	echo "-- @3x"
	cp Output/Android/drawable-xxhdpi/$filename Output/iOS/$name@3x.$ext
	echo "-- @2x"
	cp Output/Android/drawable-xhdpi/$filename Output/iOS/$name@2x.$ext
	echo "-- @1x"
	cp Output/Android/drawable-mdpi/$filename Output/iOS/$name@1x.$ext
	
	echo "Done!"
done