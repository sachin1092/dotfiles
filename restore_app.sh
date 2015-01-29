#! /bin/sh

echo "Making you superuser, master..."
echo 'Adding "sachin   ALL = NOPASSWD: ALL" to /etc/sudoers'
`echo "sachin   ALL = NOPASSWD: ALL" >> /etc/sudoers`
echo "You are a superuser now"

echo "Adding PPAs master"
while read line; do
	echo "Executing '$line'...\n"
	`echo $line`
done < repos
echo "Done adding PPAs"

`echo sudo apt-get update`
`echo sudo apt-get upgrade`

echo "Installing your apps master"
APPL=`awk '{print $2}' installedapps`
for app in $APPL; do
	echo "Installing $app..."
	`echo sudo apt-get install -y $app`
done
echo "Done installing with apps"

`echo sudo apt-get update`
`echo sudo apt-get upgrade`