if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi


PATH=/usr/local:/usr/local/bin:/usr/local/share/pypy:$PATH

# rbenv
PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

export PATH

# Initialize nvm.
. ~/.nvm/nvm.sh
