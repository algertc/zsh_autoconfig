#Setup Shell

#update pkgs
sudo apt update

#install zsh
sudo apt -y install zsh

#install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

#Give the resources a home
cp wonton_motd ~/.wonton_motd
mkdir ~/opt/zsh_things && cd ~/opt/zsh_things

#lolcat motd
git clone https://github.com/jaseg/lolcat.git
cd lolcat
make && sudo make install
cd ..

#fuck command
sudo apt -y install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user
echo "export FUCK="$HOME/.local/bin"" >> ~/.zshrc

#syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

#pure prompt
git clone https://github.com/sindresorhus/pure.git

#source zsh
exec zsh