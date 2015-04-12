# for ls
alias ls='ls --color=auto'
alias ll='ls -ahlF'
alias la='ls -A'
alias l='ls -CF'

# for tmux
alias ta='tmux attach -t'
alias tnew='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

alias yyupdate="sudo apt-get update && sudo apt-get dist-upgrade -y"
alias yyapk="adb install -r "

alias -s gz='tar xzvf'
alias -s tgz='tar xzvf'
alias -s zip='unzip'
alias -s bz2='tar xjvf'

# convenient for editing configs
alias ev='vim ~/.vimrc'
alias ez='vim ~/.zshrc'
alias sz='source ~/.zshrc'
