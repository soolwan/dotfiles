if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Put local directories at the beginning to prefer homebrew/user packages (impacts pg gem).
export PATH=/usr/local/bin:/usr/local/sbin:~/bin:$PATH

# Prepend brew-installed python install-scripts.
export PATH=/usr/local/share/python:$PATH

# Add ~/.rbenv/bin to your $PATH for access to the rbenv command-line utility.
export PATH="$HOME/.rbenv/bin:$PATH"

# Add rbenv init to your shell to enable shims and autocompletion.
eval "$(rbenv init -)"

# load Node Version Manager.
. ~/.nvm/nvm.sh
