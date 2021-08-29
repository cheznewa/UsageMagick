cp -r usagemagick usagemagickrecording
asciinema rec -c "linux-user-chroot --unshare-net $PWD/usagemagickrecording su usage" "$1"
rm -r usagemagickrecording
