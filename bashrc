if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Put local directories at the beginning to prefer homebrew/user packages.
export PATH="/usr/local/bin:$PATH"

# Initialize nvm.
. ~/nvm/nvm.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
