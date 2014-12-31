if grep -qs '/mnt/Movies\ \&\ Extras' /proc/mounts; then
    echo "It's mounted."
    nemo /mnt/Movies\ \&\ Extras/
else
    echo "It's not mounted."
    sudo mount /dev/sda2
    nemo /mnt/Movies\ \&\ Extras/
fi
