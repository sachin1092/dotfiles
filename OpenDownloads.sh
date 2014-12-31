if grep -qs '/mnt/Downloads' /proc/mounts; then
    echo "It's mounted."
    nemo /mnt/Downloads/
else
    echo "It's not mounted."
    sudo mount /dev/sda5
    nemo /mnt/Downloads/
fi
