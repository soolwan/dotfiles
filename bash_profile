export EDITOR=vim

# Put local directories at the beginning to prefer homebrew/user packages.
export PATH="/usr/local/bin:$PATH"

# Initialize nvm.
[[ -s /Users/soolwan/.nvm/nvm.sh ]] && . /Users/soolwan/.nvm/nvm.sh # This loads NVM

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
