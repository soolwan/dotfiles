if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Put local directories at the beginning to prefer homebrew/user packages.
export PATH="/usr/local/bin:$PATH"

# Initialize nvm.
. ~/nvm/nvm.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
