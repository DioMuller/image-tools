#!/bin/bash
files=Input/*

echo "Creating Directories"
mkdir -p Output

mkdir -p Output/Android
mkdir -p Output/Android/mipmap-xxxhdpi
mkdir -p Output/Android/mipmap-xxhdpi
mkdir -p Output/Android/mipmap-xhdpi
mkdir -p Output/Android/mipmap-hdpi
mkdir -p Output/Android/mipmap-mdpi

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
	convert $file -resize 192x192 Output/Android/mipmap-xxxhdpi/$filename
	echo "-- xxhdpi"
	convert $file -resize 144x144 Output/Android/mipmap-xxhdpi/$filename
	echo "-- xhdpi"
	convert $file -resize 96x96 Output/Android/mipmap-xhdpi/$filename
	echo "-- hdpi"
	convert $file -resize 72x72 Output/Android/mipmap-hdpi/$filename	
	echo "-- mdpi"
	convert $file -resize 48x48 Output/Android/mipmap-mdpi/$filename
	
	echo "- Creating iOS Images"
	echo "--1024"
	convert $file -resize 1024x1024 Output/iOS/1024.$ext	
	echo "--180"
	convert $file -resize 180x180 Output/iOS/180.$ext
	echo "--120"
	convert $file -resize 120x120 Output/iOS/120.$ext
	echo "--114"
	convert $file -resize 114x114 Output/iOS/114.$ext
	echo "--87"
	convert $file -resize 87x87 Output/iOS/87.$ext
	echo "--80"
	convert $file -resize 80x80 Output/iOS/80.$ext
	echo "--60"
	convert $file -resize 60x60 Output/iOS/60.$ext
	echo "--58"
	convert $file -resize 58x58 Output/iOS/58.$ext
	echo "--57"
	convert $file -resize 57x57 Output/iOS/57.$ext
	echo "--40"
	convert $file -resize 40x40 Output/iOS/40.$ext
	echo "--29"
	convert $file -resize 29x29 Output/iOS/29.$ext

	
	echo "Done!"
done