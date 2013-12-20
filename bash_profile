if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export PATH

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Initialize nvm.
. ~/.nvm/nvm.sh
