if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Put local directories at the beginning to prefer homebrew/user packages.
export PATH="/usr/local/bin:$PATH"

# Initialize nvm.
[[ -s /Users/soolwan/.nvm/nvm.sh ]] && . /Users/soolwan/.nvm/nvm.sh # This loads NVM

# Initialize rbenv.
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
