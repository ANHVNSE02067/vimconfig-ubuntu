chmod 644 .vimrc;
chmod 755 ~/.vim
find ~/.vim -type f -exec chmod 644 {} +;
find ~/.vim -type d -exec chmod 755 {} +;
cp -r .vim ~/;
cp .vimrc ~/
