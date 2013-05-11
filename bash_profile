export EDITOR=vim

PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Include .bashrc if it exists.
if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi

# Set PATH so it includes user's private bin if it exists.
if [ -d "$HOME/bin" ] ; then
  PATH="$HOME/bin:$PATH"
fi

### Added by the Heroku Toolbelt
PATH="/usr/local/heroku/bin:$PATH"

# rbenv
PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH
