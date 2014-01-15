if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

PATH=/usr/local:/usr/local/bin:/usr/local/share/pypy:$PATH
export PATH

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Initialize nvm.
. ~/.nvm/nvm.sh
