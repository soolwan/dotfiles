# ls colors
alias ls='ls -G'

# Initialize rbenv
eval "$(rbenv init -)"

# Load pythonbrew
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

# load Node Version Manager
. ~/.nvm/nvm.sh
