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

#postgres alias
alias poststart='pg_ctl -D ~/Desktop/Ivan/Computer\ Science/pgsql/data -l logfile start'
alias poststop='pg_ctl -D ~/Desktop/Ivan/Computer\ Science/pgsql/data stop'

#tomcat alias
alias tomstart='brew services start tomcat'
alias tomstop='brew services stop tomcat'

#Directory aliases
alias gitws='cd ~/Desktop/Ivan/Computer\ Science/Github/'
alias ivanws='cd ~/Desktop/Ivan/Computer\ Science/'

#Config files
alias vimrc='vim $VIMRC'
alias nvimrc='vim $NVIMRC'
alias bashrc='vim $BASHRC'
alias zshrc='vim $ZSHRC'
alias bashp='vim $BASHPROFILE'
alias bashprompt='vim $BASH_PROMPT'

alias edit='$EDITOR'



