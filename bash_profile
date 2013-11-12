if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi


PATH=/usr/local/bin:$PATH

# rbenv
PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

export PATH

# Initialize nvm.
. ~/.nvm/nvm.sh
