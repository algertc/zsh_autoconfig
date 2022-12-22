
ZSH_THEME=""

plugins=(git zsh-autosuggestions ansible)

eval $(thefuck --alias)

fpath+=(opt/zsh_things/pure)
autoload -U promptinit; promptinit
prompt pure
clear
lolcat .wonton_motd

