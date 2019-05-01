
  # Setting PATH for Python 3.4
  # The orginal version is saved in .bash_profile.pysave
  PATH="/usr/local/opt/python/libexec/bin:/usr/local/Cellar/python3/3.6.2/bin:/usr/local/opt/llvm/bin:${PATH}"
  export PATH

  ##
  # Your previous /Users/Ivan/.bash_profile file was backed up as /Users/Ivan/.bash_profile.macports-saved_2015-08-28_at_10:15:41
  ##

  # MacPorts Installer addition on 2015-08-28_at_10:15:41: adding an appropriate PATH variable for use with MacPorts.
  export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
  # Finished adapting your PATH environment variable for use with MacPorts.

  export PATH="/usr/local/bin:$PATH"
  # ~/.bash_profile


  [[ -s ~/.bashrc ]] && source ~/.bashrc

  export CLICOLOR=1
  export LSCOLORS=exfxcxdxbxegedabagacad

  alias subl='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl'
  alias ddu='sh ~/Dropbox/Development/Themes\ WordPress/dobsondev-underscores/ddunderscores-osx.sh'

  #[[ -r ~/.bashrc  ]] && . ~/.bashrc
  for file in ~/.{bashrc,bash_prompt}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file";
  done;
  unset file

  #function prompt {
    #local BLACK="\[\033[0;30m\]"
    #local BLACKBOLD="\[\033[1;30m\]"
    #local RED="\[\033[0;31m\]"
    #local REDBOLD="\[\033[1;31m\]"
    #local GREEN="\[\033[0;32m\]"
    #local GREENBOLD="\[\033[1;32m\]"
    #local YELLOW="\[\033[0;33m\]"
    #local YELLOWBOLD="\[\033[1;33m\]"
    #local BLUE="\[\033[0;34m\]"
    #local BLUEBOLD="\[\033[1;34m\]"
    #local PURPLE="\[\033[0;35m\]"
    #local PURPLEBOLD="\[\033[1;35m\]"
    #local CYAN="\[\033[0;36m\]"
    #local CYANBOLD="\[\033[1;36m\]"
    #local WHITE="\[\033[0;37m\]"
    #local WHITEBOLD="\[\033[1;37m\]"
    #local RESETCOLOR="\[\e[00m\]"

    #export PS1="\n $CYAN\d $CYAN\@ $RED\u@$RED\h $PURPLE$ $GREEN\w $RESETCOLOR$GREENBOLD\$(git branch 2> /dev/null)\n $BLUE[\#] → $RESETCOLOR"
    #export PS2=" | → $RESETCOLOR"
  #}

  #prompt

  #FZF settings
  export FZF_DEFAULT_COMMAND="find ."

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

  file=$(fzf --query="$1") && vim "$file"

  if [[ -n $files ]]
  then
     vim -- $files
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

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home/

export VIMRC=~/.vimrc
export NVIMRC=~/.config/nvim/init.vim
export BASHRC=~/.bashrc
export ZSHRC=~/.zshrc
export BASHPROFILE=~/.bash_profile
export BASH_PROMPT=~/.bash_prompt

#fzf + ag configs
export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"

#fzf via homebrew
if [ -e /usr/local/opt/fzf/shell/completion.bash]; then
  source /usr/local/opt/fzf/shell/key-bindings.bash
  source /usr/local/opt/fzf/shell/completion.bash
fi

export TASTE_API_KEY='277760-BashSnip-6GU1XB7D'
# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/Ivan/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/Ivan/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Ivan/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/Ivan/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
