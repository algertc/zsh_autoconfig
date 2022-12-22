#Setup Shell

#update pkgs
sudo apt update

#install zsh and give the resources a home
sudo apt -y install zsh
cp .zshrc ~/.zshrc
mkdir /opt/zsh_things && cd /opt/zsh_things

#lolcat motd
git clone https://github.com/jaseg/lolcat.git
cd lolcat
make && sudo make install
cp wonton_motd ~/.wonton_motd

#fuck command
sudo apt install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user

#syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc


