./arch-bootstrap.sh usagemagick
linux-user-chroot $PWD/usagemagick pacman -S --noconfirm imagemagick graphicsmagick a2ps 
mkdir -p $PWD/usagemagick/home/usage
printf "PS1=\"%% \"\n" >> $PWD/usagemagick/home/usage/.bashrc
git clone https://github.com/ImageMagick/Usage-markdown /tmp/usage
mkdir -p $PWD/usagemagick/home/usage
cp -rv /tmp/usage/img_* $PWD/usagemagick/home/usage
cp -v /tmp/usage/scripts/* $PWD/usagemagick/usr/local/bin
git clone https://github.com/streetsamurai00mi/ttf-ms-win10 /tmp/fonts
mkdir -p $PWD/usagemagick/home/usage/.fonts
cp -v /tmp/fonts/*.ttf $PWD/usagemagick/home/usage/.fonts
linux-user-chroot $PWD/usagemagick useradd usage
linux-user-chroot $PWD/usagemagick chown -R usage:usage /home/usage
