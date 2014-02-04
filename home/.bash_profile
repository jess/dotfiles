
#alia ri='ri -f ansi'

#switch things in terminal

#show rvm and get in command line
#if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then source `brew --prefix`/etc/bash_completion.d/git-completion.bash; fi # for Git completion
## from output
#export PS1="\H \[\033[01;34m\]\$(~/.rvm/bin/rvm-prompt) \[\033[01;32m\]\w\[\033[00;33m\]\$(__git_ps1 \" (%s)\") \[\033[01;36m\]\$\[\033[00m\] "
#export PS1="\$(chruby)\$(ruby --version) "
#if [[ -r ./.ruby-version ]] 
#  then
#    export PS1="\H \[\033[01;34m\]\$(cat './.ruby-version') \[\033[01;32m\]\w\[\033[00;33m\]\$(__git_ps1 \" (%s)\") \[\033[01;36m\]\$\[\033[00m\] "
#  else
#    export PS1="\H \[\033[01;34m\]\$(ruby --version | cut -d' ' -f 1-2) \[\033[01;32m\]\w\[\033[00;33m\]\$(__git_ps1 \" (%s)\") \[\033[01;36m\]\$\[\033[00m\]\$(pwd) "
#fi
#PS1='$(ruby -e "print RUBY_VERSION") \W\$ '

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


