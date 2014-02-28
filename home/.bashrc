source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

source ~/.bash_alias

export HISTIGNORE="fg*"
bind '"\C-f": "fg %-\n"'

export EDITOR="vim"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

export PS1="\H \[\033[01;34m\]\$(ruby --version | cut -d' ' -f 1-2) \[\033[01;32m\]\w\[\033[00;33m\]\$(__git_ps1 \" (%s)\") \[\033[01;36m\]\$\[\033[00m\] "

### Added by the Heroku Toolbelt
export PATH="./.bundle/bin:/usr/local/heroku/bin:$PATH"

vim()
{
    (unset GEM_PATH GEM_HOME; command vim "$@")
}
