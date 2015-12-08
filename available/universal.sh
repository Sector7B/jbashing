## Colorize the ls output ##
alias ls='ls -G --color=auto'
## Use a long listing format ##
alias ll='ls -lh'
alias lla='ls -lah'

## Show only hidden files ##
alias l.='ll -d .*'

alias mkdir='mkdir -pv'
alias ping='ping -c 5'
alias h='history | grep $1'
alias svi='sudo vi $1'
alias sgy='sudo geany $1'
alias pgrep='pgrep -a'
alias cdh='cd $HOME'
alias ag='alias | grep $1'

function bak { cp $1 $1.$USER.`date "+%Y-%m-%d_%H.%M.%S"`.BAK; }
function bako { cp $1 $1.ORIG; }

export -f bak bako

#debian
alias cleanapt='sudo apt-get autoclean; sudo apt-get clean; sudo apt-get autoremove'
alias infoapt='aptitude show $1'
alias searchapt='apt-cache search $1'
alias installapt='sudo apt-get install -y $1'
alias updateapt='sudo apt-get update; sudo apt-get upgrade'
alias updateapt-dist='sudo apt-get update; sudo apt-get dist-upgrade'

alias mount-host-downloads='sudo mount -t vboxsf -o uid=$UID,gid=$(id -g) host_downloads $HOME/host/downloads'

#fedora / redhat
alias dnfu='sudo dnf -y clean all; sudo dnf -y update'
alias dnfi='sudo dnf -y install $1'
alias dnfs='dnf search $1'

PS_SHORT="\[\e[31m\]\u\[\e[m\]@\[\e[32m\]\h\[\e[m\]:\W \\$> "
PS_LONG="\n\[\e[35m\]\$(/bin/date)\[\e[m\]\n\[\e[32m\]\w\[\e[m\] : \[\e[36m\]\$(/bin/ls -1 | /usr/bin/wc -l | /bin/sed 's: ::g') files \[\e[m\] \[\e[36m\]\$(/bin/ls -lah | /bin/grep -m 1 total | /bin/sed 's/total //')b\[\e[m\]\n\[\e[31m\]\u\[\e[m\]@\[\e[33m\]\H\[\e[m\] : \[\e[34m\]\$(/usr/bin/tty | /bin/sed -e 's:/dev/::')\[\e[m\]\n\$ "

export PS1=$PS_SHORT

alias psshort='PS1=$PS_SHORT'
alias pslong='PS1=$PS_LONG'
