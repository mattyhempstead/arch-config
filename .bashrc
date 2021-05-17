#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

pwd_short() {
  pwd | sed -e "s:$HOME:~:" -e "s:\(.\)[^/]*/:\1/:g"
}

git_branch() {
    # Since I have a git repo over /home/matty for config,
    # I need to hide this tag when there is either no branch or the repo root is /home/matty
    if [[ $(git rev-parse --show-toplevel 2> /dev/null) != "/home/matty" ]] && [[ $(git branch 2> /dev/null) ]]
    then
        echo $(git branch | grep \* | tr -d "\n" | tr -d " ")" "
    fi
}

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
PURPLE=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)

BOLD=$(tput bold)
NORMAL=$(tput sgr0)


## The prompt string at the start of every command
USER='\[${GREEN}${BOLD}\]\u\[${WHITE}${NORMAL}\] '
WD='\[${YELLOW}\]$(pwd_short)\[${WHITE}\] '
BRANCH='\[${PURPLE}\]$(git_branch)\[${WHITE}\]'
SYMBOL='\[❤️\]  '$(echo -ne '\b') # idk why this fixes it but it does
#PS1=$USER$WD$BRANCH$SYMBOL
PS1=$USER$WD$BRANCH$SYMBOL


# Set kitty tab name after each command
PROMPT_COMMAND="echo -en '\033]0;'; echo -n 'bash '; pwd_short; echo -en '\a'"


# Some useful aliases
alias ls='ls --color=auto'
alias pls='sudo $(fc -ln -1)' # runs the previous command with sudo
alias cls='clear'
alias xclp='xclip -selection "clipboard"'
alias py='python3'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/matty/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/home/matty/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/matty/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/home/matty/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# Add bindings to bring back Ctrl-Left and Ctrl-Right cursor navigation
bind '"\eOc":shell-forward-word'
bind '"\eOd":shell-backward-word'

# Binding for Ctrl-Backspace to delete word
bind '"\C-h":shell-backward-kill-word'
