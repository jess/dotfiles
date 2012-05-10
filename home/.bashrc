source ~/.bash_profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

mvim()
{
  (unset GEM_PATH GEM_HOME; command mvim "$@")
}
vim()
{
  (unset GEM_PATH GEM_HOME; command vim "$@")
}
