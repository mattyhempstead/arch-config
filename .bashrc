#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## The prompt string at the start of every command
USER='\[\e[;1;32m\]\u\[\e[;0;37m\] '
WD='\[\e[;;33m\]\W\[\e[;;37m\] '
# Since I have a git repo over /home/matty for config, I need to hide this tag when there is either no branch or the repo root is /home/matty
BRANCH='\[\e[;;35m$(if [[ $(git rev-parse --show-toplevel 2> /dev/null) != "/home/matty" ]] && [[ $(git branch 2> /dev/null) ]]; then echo $(git branch | grep \* | tr -d "\n" | tr -d " ")" "; fi)\[\e[;;37m\]'
SYMBOL='\[\e[;;31m\]🖤 \[\e[;;37m\]'
PS1=$USER$WD$BRANCH$SYMBOL

#PS1="matty $ "

alias ls='ls --color=auto'
alias pls='sudo $(fc -ln -1)'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/matty/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/home/matty/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/matty/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/home/matty/Downloads/google-cloud-sdk/completion.bash.inc'; fi
export http_proxy=''
export https_proxy=''
export ftp_proxy=''
export socks_proxy=''
