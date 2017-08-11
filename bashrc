alias ls='ls -G'
alias ll="ls -la"
alias sl="ls"
alias l="ls"
alias s="ls"
alias chrome="open -a 'Google Chrome'"

alias grep="grep --color=auto"

alias h='history'
alias j='job -l'
alias c='clear'


alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

alias sa='source ~/.bashrc; source ~/.bash_profile; echo bashrc and bash_profile sourced'
#alias sprof='source ~/.bash_profile; echo bash_profile sourced'

alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -iv'

alias top='htop'

alias diff='colordiff'
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
