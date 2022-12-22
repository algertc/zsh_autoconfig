# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME=""

#$copydir copies the current directory to clipboard
#dirhistory alt + left takes you to your previous directory (POWERFUL)
plugins=(git zsh-autosuggestions ansible copydir dirhistory)

source $ZSH/oh-my-zsh.sh

eval $(thefuck --alias)

fpath+=(~/opt/zsh_things/pure)
autoload -U promptinit; promptinit
prompt pure
clear
lolcat .wonton_motd

