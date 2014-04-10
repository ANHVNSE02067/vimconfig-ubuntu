sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev ruby-dev mercurial;

sudo apt-get install liblua5.1-dev
sudo mkdir /usr/include/lua5.1/include/
sudo cp /usr/include/lua5.1/* /usr/include/lua5.1/include/
sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.1.so /usr/local/lib/liblua.so

sudo apt-get install python2.7


sudo apt-get remove vim vim-runtime gvim;
sudo apt-get remove vim-tiny vim-common vim-gui-common;

cd vim
./configure --with-features=huge \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
	    --with-lua-prefix=/usr/include/lua5.1 \
            --enable-perlinterp \
	    --enable-luainterp \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr;
make VIMRUNTIMEDIR=/usr/share/vim/vim74;
sudo make install;

sudo apt-get install checkinstall;
sudo checkinstall;
