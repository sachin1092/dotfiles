#! /bin/sh
# backup script to backup everything
# cd ~/
echo "Please enter the backup location, master"
read LOC
echo "\n"

while read line
do
    name=$line
    echo "Text read from file - $name"
done < home.txt

# for files in `ls`; do
# 	echo $files
# done