dnf install -y python3 tmux neovim git zsh curl wget util-linux-user which gcc python3-devel

alternatives --install /usr/bin/python python /usr/bin/python3 1

curl --silent --show-error --retry 5 https://bootstrap.pypa.io/get-pip.py | sudo python


sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

vipath=$(which vi)
rm $vipath
ln -s `which nvim` $vipath 
