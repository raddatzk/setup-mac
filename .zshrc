export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="strug"

plugins=(
  git
  colored-man-pages
  zsh-syntax-highlighting
  zsh-autosuggestions
  common-aliases
  sudo
)

source $ZSH/oh-my-zsh.sh

# Aliases for going back in filesystem
alias -1='cd ..'
alias -2='cd ../..'
alias -3='cd ../../..'
alias -4='cd ../../../..'
alias -5='cd ../../../../..'
alias -6='cd ../../../../../..'
alias -7='cd ../../../../../../..'
alias -8='cd ../../../../../../../..'
alias -9='cd ../../../../../../../../..'
alias -10='cd ../../../../../../../../../..'

# Aliases for directory listing
alias la="ls -lah"

# Aliases for docker
alias drm='docker rm $(docker ps -a -q)'
alias drmi='docker rmi -f $(docker images -a -q)'

# Aliases for docker-compose
alias dc='docker-compose'
alias dcu='docker-compose up -d'

# Alias for maven
alias cleanVersionBackup='find . -name "*.versionsBackup" -type f -exec rm -f {} \;'

# exports
export EDITOR=vim
export PATH=/Users/kevin/bin:$PATH
export PATH=~/Library/Application\ Support/JetBrains/Toolbox/scripts:$PATH

# initialize thefuck
eval $(thefuck --alias)
