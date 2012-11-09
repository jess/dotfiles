alias ll="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
# git
alias gs="git status"
alias gc="git commit -m"
alias ga="git add ."
alias gac="git add -A; git commit -m "
alias gsummary='git log --pretty=format:"%h - %an, %ar : %s"'

alias rdbm="bundle exec rake db:migrate db:test:prepare"
alias git=hub
alias markdown="/usr/local/bin/Markdown.pl"
alias be="bundle exec"
alias tn="tmux new -s"
alias ta="tmux attach -t"
alias tk="tmux kill-session -t"
alias tls="tmux ls"

#switch things in terminal
export HISTIGNORE="fg*"
bind '"\C-f": "fg %-\n"'

export EDITOR="vim"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
#show rvm and get in command line
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then source `brew --prefix`/etc/bash_completion.d/git-completion.bash; fi # for Git completion
export PS1="\H \[\033[01;34m\]\$(~/.rvm/bin/rvm-prompt) \[\033[01;32m\]\w\[\033[00;33m\]\$(__git_ps1 \" (%s)\") \[\033[01;36m\]\$\[\033[00m\] "

# Define Vim wrappers which unsets GEM_HOME and GEM_PATH before
# invoking vim and all known aliases
#
# @author Wael Nasreddine <wael.nasreddine@gmail.com>
function define_vim_wrappers()
{
    vim_commands=(
        eview evim gview gvim gvimdiff gvimtutor rgview
        rgvim rview rvim vim vimdiff vimtutor xxd mvim
    )

    for cmd in ${vim_commands[@]}; do
        cmd_path=`/usr/bin/env which -a "${cmd}" 2>/dev/null | grep '^/'`
          if [ -x "${cmd_path}" ]; then
                  eval "function ${cmd} () { (unset GEM_HOME; unset GEM_PATH; $cmd_path \$@) }"
          fi
    done
}


vim()
{
    (unset GEM_PATH GEM_HOME; command vim "$@")
}

#define_vim_wrappers

#echo "Jess is Cool.  Jesus loves you too!"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
