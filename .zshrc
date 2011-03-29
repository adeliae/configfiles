#file $HOME/.zshrc

bindkey -v

autoload -U compinit
compinit
autoload -U colors
colors

# envops
export EDITOR=vim
export VISUAL=vim
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LESS="-rX"
force_color_prompt=yes

# Paths
export PATH="$PATH:/bin:/sbin:/usr/bin/:$HOME/bin:"
export PS1=": %{`echo $RED`%}%B%m%b %{`echo $CYAN`%}%48<...<%~ $%{`echo $LT_GRAY`%}; "
unset RPROMPT

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD

## history
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_NO_FUNCTIONS
setopt HIST_NO_STORE

## for sharing history between zsh processes
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

## never ever beep ever
setopt NO_BEEP
# xset b off

# No cd required
setopt autocd

#Aliases
alias vi=vim
alias hist='history -d'
alias ls='ls --color=yes'
alias la='ls -al --color=yes'
alias grep='grep --colour -E'
alias less=vless
alias run-help=man
alias ssh='/usr/bin/ssh -2'
alias vless='/usr/share/vim/vim70/macros/less.sh'
alias -g ND='$(ls -d *(/om[1]))' # newest directory
alias -g NF='$(ls *(.om[1]))'    # newest file
alias sz="source $HOME/.zshrc"
alias ez="vi $HOME/.zshrc"

# Extra awesomeness
u () {
       set -A ud
       ud[1+${1-1}]=
       cd ${(j:../:)ud}
}

# Standard colors (foreground)
export BLACK='\033[0m\033[30m'
export RED='\033[0m\033[31m'
export GREEN='\033[0m\033[32m'
export ORANGE='\033[0m\033[33m'
export BLUE='\033[0m\033[34m'
export MAGENTA='\033[0m\033[35m'
export CYAN='\033[0m\033[36m'
export GRAY='\033[0m\033[37m'

# High intensity, light, or bold colors
export LT_BLACK='\033[1m\033[30m'
export LT_RED='\033[1m\033[31m'
export LT_GREEN='\033[1m\033[32m'
export LT_ORANGE='\033[1m\033[33m'
export YELLOW='\033[1m\033[33m'
export LT_BLUE='\033[1m\033[34m'
export LT_MAGENTA='\033[1m\033[35m'
export LT_CYAN='\033[1m\033[36m'
export LT_GRAY='\033[1m\033[37m'

# Standard color backgrounds
export ON_BLACK='\033[0m\033[40m'
export ON_RED='\033[0m\033[41m'
export ON_GREEN='\033[0m\033[42m'
export ON_ORANGE='\033[0m\033[43m'
export ON_BLUE='\033[0m\033[44m'
export ON_MAGENTA='\033[0m\033[45m'
export ON_CYAN='\033[0m\033[46m'
export ON_GRAY='\033[0m\033[47m'
export ON_WHITE='\033[0m\033[49m'

# Hi-intensity, light, or bold backgrounds
export ON_LT_BLACK='\033[1m\033[40m'
export ON_LT_RED='\033[1m\033[41m'
export ON_LT_GREEN='\033[1m\033[42m'
export ON_LT_ORANGE='\033[1m\033[43m'
export ON_YELLOW='\033[1m\033[43m'
export ON_LT_BLUE='\033[1m\033[44m'
export ON_LT_MAGENTA='\033[1m\033[45m'
export ON_LT_CYAN='\033[1m\033[46m'
export ON_LT_GRAY='\033[1m\033[47m'
export ON_LT_WHITE='\033[1m\033[49m'

