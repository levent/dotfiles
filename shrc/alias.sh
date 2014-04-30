alias l="ls -lah"
alias ll="ls -l"
alias la='ls -A'

alias v='vim -p'
alias p='ps waxu'
alias s='python -m SimpleHTTPServer'

nfind() { find . -name "*$1*" }

alias tinfo='echo "SESSIONS" ; tmux list-sessions ; echo "WINDOWS" ; tmux list-windows ; echo "PANES" ; tmux list-panes'
