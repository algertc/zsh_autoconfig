ZSH_THEME=""

#$copydir copies the current directory to clipboard
#dirhistory alt + left takes you to your previous directory (POWERFUL)
plugins=(git zsh-autosuggestions)

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

sudo cp ~/.local/bin/fuck /usr/local/bin/
sudo cp ~/.local/bin/thefuck /usr/local/bin
eval $(thefuck --alias)

fpath+=(~/opt/zsh_things/pure)
autoload -U promptinit; promptinit
prompt pure
clear
lolcat ~/.wonton_motd

