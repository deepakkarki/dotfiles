#colorize output
export TERM=xterm-256color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

#standard color definition
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

#PS1="[ \w ] » "
PS1='\n[\[\e[1;34m\] \w \[\e[0m\]] » '

#easy to remember aliases
alias c=clear
alias cls="clear && ls"
alias hd="cd ~/Desktop/Deepak/hackend-project/"
alias DEEPAK="ssh deepak@deepak-karki.dev.eng.nutanix.com"
alias hg="history | grep"
alias ab='cd ~/Desktop/Boot-Camp-Project/qa/agave-bot'
alias vi="/usr/local/bin/vim"
alias vim="/usr/local/bin/vim"
alias bp="vim ~/.bash_profile"
alias vr="vim ~/.vimrc"

#git specific alias
alias gs="git status"
alias ga="git add"
alias gd="git diff"
alias gc="git commit -m"

export NUTEST_PATH="/Users/deepak.karki/Desktop/agave2"
export PYTHONPATH=$NUTEST_PATH

alias emacs="/usr/local/Cellar/emacs/24.5/bin/emacs-24.5"
