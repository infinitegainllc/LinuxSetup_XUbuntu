#!/bin/bash
# this a file for moving items in git
#

oldmain="/folder/currently/in/"
newmain="/folder/to/move/to/"
cd $oldmain

#for all items in dir
for dir in *;
do
    if [ -d "$dir" ];then
        echo "dir => $oldmain/$dir"
        git mv -v "$oldmain/$dir" "$newmain/$dir"
    else
        echo "file => $dir"
        git mv -v "$oldmain/$dir" "$newmain/$dir"
    fi
done
