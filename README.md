# image-tools

Bash scripts with useful tools for mobile developers.

## How to use:

Add all the images in the Input/ folder and run the desired script.

## Pre-Requisites

Those scripts need [ImageMagick](https://imagemagick.org/index.php) with the legacy utilities installed.

Those scripts were tested using ImageMagick 7.0.8 but they should work on other versions.

## Scripts

### resize.sh

Generates mdpi, hdpi, xhdpi, xxhdpi and xxxhdpi (Android) and @1x-@4x (iOS) images from large (xxxhdpi/@4x) images.

### invert.sh

Inverts the images colors.

### enlarge.sh

Doubles the images size.

### sharpen.sh

Sharpens the images.