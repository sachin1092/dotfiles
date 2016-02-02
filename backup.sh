#! /bin/sh
# backup script to backup everything
# cd ~/
echo "Please enter the backup location, master"
read LOC
echo "\n"

#aptitude search '~i!~M'

while read line
do
    name=$line
    echo "Backing up - $name"
done < home.txt

# for files in `ls`; do
# 	echo $files
# done