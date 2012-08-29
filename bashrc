if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Put local directories at the beginning to prefer homebrew/user packages.
export PATH="/usr/local/bin:$PATH"

# Add the path for rbenv and run its init script.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Initialize nvm.
. ~/nvm/nvm.sh
