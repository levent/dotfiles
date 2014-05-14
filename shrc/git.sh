alias g='git'
alias gl='git pull'
alias gp='git push'
alias gd='git diff'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git branch -v'
alias st='git status -sb'
alias gs='git log --oneline --decorate -10 --color'

function gco {
  if [ $# -eq 0 ]; then
    git checkout master
  else
    git checkout "$@"
  fi
}
