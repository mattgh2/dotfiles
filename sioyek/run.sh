#! /bin/sh

PTH="./base16-sioyek/colors"

for file in $PTH/*; do
    echo "Applying"  $file
    cat "$file" > prefs_user.config 
    sleep 2
done
