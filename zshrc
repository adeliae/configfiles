#file $HOME/.zshrc
source .zshenv

bindkey -v
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line
bindkey "^r" history-incremental-search-backward
bindkey ' ' magic-space
bindkey "^t" push-line-or-edit

autoload -U compinit
compinit
zstyle ':completion::complete:*' use-cache 1
zmodload zsh/complist
autoload -U colors
colors

# Envops
export EDITOR=vim
export VISUAL=vim
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LESS="-rX"
export DIRSTACKSIZ=20

setopt autopushd pushdsilent
setopt ALWAYS_TO_END
setopt AUTO_NAME_DIRS
setopt COMPLETE_IN_WORD
setopt NO_BEEP
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY # for sharing history between zsh processes
setopt autocd # No cd required
force_color_prompt=yes

# Paths
export PATH=/opt/local/bin:/opt/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:$PATH
export VIMRUNTIME=/usr/local/share/vim/vim73
export PATH="$PATH:/bin:/sbin:/usr/bin/:$HOME/bin:"
export PS1=": %{`echo $RED`%}%B%m%b %{`echo $CYAN`%}%48<...<%~ $%{`echo $LT_GRAY`%}; "
unset RPROMPT

## history
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000

setopt histignoredups
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_NO_FUNCTIONS
setopt HIST_NO_STORE
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
export HISTSIZE=1000
export SAVEHIST=5000
export HISTFILE=~/.zhistory
setopt SHARE_HISTORY # import new commands from the history file also in other zsh-session
setopt correct # try to correct spelling
setopt extended_glob
setopt nobeep
watch=(all)

#Aliases
alias vi=vim
alias hist='history -d'
alias ls='ls --color=yes'
alias la='ls -al'
alias grep='grep --colour -E'
alias less=vless
alias run-help=man
alias ssh='/usr/bin/ssh -2'
alias vless='/usr/share/vim/vim70/macros/less.sh'
alias -g ND='$(ls -d *(/om[1]))' # newest directory
alias -g NF='$(ls *(.om[1]))'    # newest file
alias sz="source $HOME/.zshrc"
alias ez="vi $HOME/.zshrc"

## Mac/Linux specific settings
if [[ $HOME[2,5] == 'User' ]]; then
    # Mac Stuff
    alias ls='ls -G'
else
    # Linux Stuff
    alias ls='ls --color=always'
fi

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

# Ensure less has some colour
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# Ruby Version Manager - http://rvm.beginrescueend.com/
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
