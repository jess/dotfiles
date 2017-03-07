source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

source ~/.bash_alias
#source ~/.bash_completions
complete -C ~/rake-completion.rb -o default rake

export HISTIGNORE="fg*"
bind '"\C-f": "fg %-\n"'

export EDITOR="vim"
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

##############
# Update Bash Completion 2/22
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
#if [ -f $(brew --prefix)/etc/bash_completion ]; then
#. $(brew --prefix)/etc/bash_completion
#fi
#############

export PS1="\H \[\033[01;34m\]\$(ruby --version | cut -d' ' -f 1-2) \[\033[01;32m\]\w\[\033[00;33m\]\$(__git_ps1 \" (%s)\") \[\033[01;36m\]\$\[\033[00m\] "

### Added by the Heroku Toolbelt
export PATH="./bin:./.bundle/bin:/usr/local/heroku/bin:$PATH"

# uncommended on 4/7/15, hammer.vim wasn't working 
# said i was missing depen but I had it installed everywhere
#vim()
#{
#    (unset GEM_PATH GEM_HOME; command vim "$@")
#}

export NVM_DIR="/Users/jess/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
