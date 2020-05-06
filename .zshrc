# remeber about adding in oryginal config file: 
# . ~/.zsh-settings/.zshrc
#ZSH_THEME="robbyrussell"

# FZF commands for Manjaro terminal. Have to be added into main zshrc file (not sure why)
# Source: https://wiki.archlinux.org/index.php/Fzf
# source /usr/share/fzf/key-bindings.zsh
# source /usr/share/fzf/completion.zsh

# removing username@computer from 'agnoster' color scheme in ohmyzsh
prompt_context() {}

# nvm support 
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

set -o vi 

# require fd installation (I installed it with npm) 
export FZF_DEFAULT_COMMAND='fd --type f'

