#! /bin/sh

cd "./examples"
for file in *; do
    echo "Showcasing $file ...";
    echo " ";
    sleep 1;
    fastfetch --load-config "$file";
    sleep 1;
    clear;
done
