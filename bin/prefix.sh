#!/bin/sh

#  prefix.sh
#  Emoji Spy
#
#  Created by John Pavley on 2/11/18.
#  Copyright © 2018 Epic Loot. All rights reserved.

#  Notes:
#  
#  Prefix.sh renames all the *.png files in a directory with
#  a supplied prefix string. This operation is destructive
#  and I can't easily be undone. There is no confimation
#  before the operation is started.

#  Example usage: ./../../bin/prefix.sh tb
#                 Renames all all the png files in the current
#                 directory so they start with "tb-"


PREFIX="$1"

echo "Prefixing files in this directory with $PREFIX"

for file in *.png; do
    mv "$file" "$PREFIX-${file}"
    echo "file ${file} renamed $PREFIX-${file}"
done
