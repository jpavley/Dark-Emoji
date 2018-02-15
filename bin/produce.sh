#!/bin/sh

#  produce.sh
#  Emoji Spy
#
#  Created by John Pavley on 2/11/18.
#  Copyright © 2018 Epic Loot. All rights reserved.

#  Notes:
#  
#  Produce.sh resizes and names all the *.png files in a 
#  directory so that they are ready to be included in the
#  Emoji Spy iOS app. Images are output in 3 resolutions (@1x, 
#  @2x, @3x) for three sizes (25x25, 60x60, 200x200). Each
#  size is given a prefix based on its use case: (dv, tc,
#  tb). Produce.sh uses Apples Sips tool.

#  Example usage: ./produce.sh sourceDirectory outputDirectory


SOURCE_DIRECTORY="$1"
OUTPUT_DIRECTORY="$2"

echo "resizing and name files from $SOURCE_DIRECTORY to $OUTPUT_DIRECTORY"

cd $SOURCE_DIRECTORY

# Toolbar sizes
TB1X=25
TB2X=50
TB3X=75

# Table cell sizes
TC1X=60
TC2X=120
TC3X=180

# Detail view sizes
DV1X=200
DV2X=400
DV3X=600


for file in *.png; do

	# Toolbar resolutions
    sips -z $TB1X $TB1X ${file} --out "$OUTPUT_DIRECTORY/tb-${file%.png}@1x.png"
    sips -z $TB2X $TB2X ${file} --out "$OUTPUT_DIRECTORY/tb-${file%.png}@2x.png"
    sips -z $TB3X $TB3X ${file} --out "$OUTPUT_DIRECTORY/tb-${file%.png}@3x.png"

    # Table cell resolutions
    sips -z $TC1X $TC1X ${file} --out "$OUTPUT_DIRECTORY/tc-${file%.png}@1x.png"
    sips -z $TC2X $TC2X ${file} --out "$OUTPUT_DIRECTORY/tc-${file%.png}@2x.png"
    sips -z $TC3X $TC3X ${file} --out "$OUTPUT_DIRECTORY/tc-${file%.png}@3x.png"

    # Detail view resolutions
    sips -z $DV1X $DV1X ${file} --out "$OUTPUT_DIRECTORY/dv-${file%.png}@1x.png"
    sips -z $DV2X $DV2X ${file} --out "$OUTPUT_DIRECTORY/dv-${file%.png}@2x.png"
    sips -z $DV3X $DV3X ${file} --out "$OUTPUT_DIRECTORY/dv-${file%.png}@3x.png"

done
