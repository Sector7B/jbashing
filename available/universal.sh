## Colorize the ls output ##
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
## Use a long listing format ##
alias ll='ls -lh'
alias lla='ls -lah'

## Show only hidden files ##
alias l.='ll -d .*'

alias mkdir='mkdir -pv'
alias ping5='ping -c 5'
alias keepalive='ping -i 15 `route -n get default | grep gateway | cut -d ":" -f2-`'

alias df='df -h'
alias mem='free -mh'

alias svi='sudo vi $1'
alias sgy='sudo geany $1'

alias hgrep='history | grep $1'
alias pgrep='pgrep -a'
alias agrep='alias | grep $1'

alias doc='cd $HOME/Documents'
alias down='cd $HOME/Downloads'
alias drop='cd $HOME/Dropbox'
alias home='cd $HOME'
alias apps='cd $HOME/Applications'
function touchcreds { touch $HOME/.$1 && echo username=NONE >> $HOME/.$1 && echo password=NONE >> $HOME/.$1 && chmod 600 $HOME/.$1; }

function bak { cp $1 $1.$USER.`date "+%Y-%m-%d_%H.%M.%S"`.BAK; }
function bako { cp $1 $1.ORIG; }

export -f bak bako touchcreds

PS_SHORT="\[\e[31m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\]:\W \\$> "
PS_LONG="\n\[\e[35m\]\$(/bin/date)\[\e[m\]\n\[\e[32m\]\w\[\e[m\] : \[\e[36m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files \[\e[m\] \[\e[36m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[m\]\n\[\e[31m\]\u\[\e[m\]@\[\e[33m\]\H\[\e[m\] : \[\e[34m\]\$(/usr/bin/tty | /bin/sed -e 's:/dev/::')\[\e[m\]\n\$ "

export PS1=$PS_SHORT

alias psshort='PS1=$PS_SHORT'
alias pslong='PS1=$PS_LONG'
