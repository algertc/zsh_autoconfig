
ZSH_THEME=""

plugins=(git zsh-autosuggestions)


eval $(thefuck --alias)


autoload -U promptinit; promptinit
prompt pure
clear
lolcat .wonton_motd
source /Users/charliealgert/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/opt/homebrew/opt/ansible@2.9/bin:$PATH"