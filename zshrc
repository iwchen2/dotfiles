# If you come from bash you might have to change your $PATH.
 #export PATH=$HOME/bin:/usr/local/bin:$PATH
 path+=('/Library/TeX/texbin')
 export PATH="$HOME/bin:/usr/local/bin:/usr/local/opt/python/libexec/bin:/usr/local/Cellar/python3/3.6.2/bin:/Users/Ivan/anaconda3/bin:/usr/local/opt/llvm/bin:${PATH}"

# Path to your oh-my-zsh installation.
export ZSH=/Users/Ivan/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

export CLICOLOR=1
export LS_COLORS=exfxcxdxbxegedabagacad
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
 #HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
 DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 #ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
 HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git github mvn ant themes python pip node npm brew osx bower extract z warhol battery emoji emoji-clock history docker catimg sublime sudo zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#Aliases
alias ls='ls -G'
alias ll='ls -la'
alias sl="ls"
alias l="ls"
alias s="ls"
alias chrome="open -a 'Google Chrome'"

alias grep="grep --color=auto"

alias cat='bat'

alias j='job -l'
alias c='clear'

alias gitws='cd ~/Desktop/Ivan/Computer\ Science/Github/'
alias ivanws='cd ~/Desktop/Ivan/Computer\ Science/'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'

alias mv='mv -iv'
alias cp='cp -iv'
alias rm='rm -iv'

alias top='htop'
alias diff='colordiff'
alias edit='$EDITOR' 

alias brewup='brew update && brew upgrade `brew outdated`'

export VIMRC=~/.vimrc
export NVIMRC=~/.config/nvim/init.vim
export ZSHRC=~/.zshrc
export BASHRC=~/.bashrc
export BASHPROF=~/.bash_profile
export BASH_PROMPT=~/.bash_prompt
export GITCONFIG=~/.gitconfig


alias vimrc='nvim $VIMRC'
alias nvimrc='nvim $NVIMRC'
alias zshrc='nvim $ZSHRC'
alias bashrc='nvim $BASHRC'
alias bashp='nvim $BASHPROF'
alias bashprompt='nvim $BASH_PROMPT'
alias gitconfig='nvim $GITCONFIG'

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home/
export CATALINA_HOME=/usr/local/Cellar/tomcat/9.0.12/libexec
export CATALINA_BASE=/usr/local/Cellar/tomcat/9.0.12/libexec

alias tomstart='brew services start tomcat'
alias tomstop='brew services stop tomcat'

alias poststart='pg_ctl -D ~/Desktop/Ivan/Computer\ Science/pgsql/data -l logfile start'
alias poststop='pg_ctl -D ~/Desktop/Ivan/Computer\ Science/pgsql/data stop'

alias sa='source ~/.zshrc; echo zshrc sourced'
#FZF settings
  #export FZF_DEFAULT_COMMAND="find ."

#fzf + ag configs
export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"

#fzf via homebrew
if [ -e /usr/local/opt/fzf/shell/completion.zsh ]; then
  source /usr/local/opt/fzf/shell/key-bindings.zsh
  source /usr/local/opt/fzf/shell/completion.zsh
fi

  _gen_fzf_default_opts() {
    local base03="234"
    local base02="235"
    local base01="240"
    local base00="241"
    local base0="244"
    local base1="245"
    local base2="254"
    local base3="230"
    local yellow="136"
    local orange="166"
    local red="160"
    local magenta="125"
    local violet="61"
    local blue="33"
    local cyan="37"
    local green="64"

    # Comment and uncomment below for the light theme.

    # Solarized Dark color scheme for fzf
    #export FZF_DEFAULT_OPTS="
      #--color fg:-1,bg:-1,hl:$blue,fg+:$base2,bg+:$base02,hl+:$blue
      #--color info:$yellow,prompt:$yellow,pointer:$base3,marker:$base3,spinner:$yellow
      #--height 40% --no-reverse --border
    #"
    ## Solarized Light color scheme for fzf
    export FZF_DEFAULT_OPTS="
      --color fg:-1,bg:-1,hl:$blue,fg+:$base02,bg+:$base2,hl+:$blue
      --color info:$yellow,prompt:$yellow,pointer:$base03,marker:$base03,spinner:$yellow
      --height 40% --no-reverse --border
    "
  }
  _gen_fzf_default_opts

# vf - fuzzy open with vim from anywhere
# ex: vf word1 word2 ... (even part of a file name)
# zsh autoload function
vf() {
  local files

  file=$(fzf --query="$1") && nvim "$file"

  if [[ -n $files ]]
  then
     nvim -- $files
     print -l $files[1]
  fi
}

#fd - change to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_CTRL_T_OPTS="--select-1 --exit-0"

#Spaceship settings
SPACESHIP_DOCKER_SHOW="false"

SPACESHIP_TIME_SHOW="true"
SPACESHIP_TIME_FORMAT="%t"
SPACESHIP_TIME_12HR="true"

SPACESHIP_HOST_PREFIX="@"

SPACESHIP_EXEC_TIME_ELAPSED="0"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


source "/Users/Ivan/.oh-my-zsh/custom/themes/spaceship.zsh-theme"
