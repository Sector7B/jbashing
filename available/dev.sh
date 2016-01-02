GITHUB_PASSWORD=`sed "/^\#/d" $HOME/.githubcreds | grep 'password'  | tail -n 1 | cut -d "=" -f2-`
GITHUB_USERNAME=`sed "/^\#/d" $HOME/.githubcreds | grep 'username'  | tail -n 1 | cut -d "=" -f2-`

export DEVDIR=$HOME/Development
export WORKON_HOME=$DEVDIR/Python/Virtualenv
export PROJECT_HOME=$DEVDIR/Python/Projects


alias mkdevdir='mkdir -p $DEVDIR/Python && mkdir -p $DEVDIR/Python/Projects && mkdir -p $DEVDIR/Python/Config/Virtualenv && mkdir -p $DEVDIR/Java && mkdir -p $DEVDIR/Node && mkdir -p $DEVDIR/Bash'

alias dev='cd $DEVDIR'
alias devpy='cd $DEVDIR/Python'
alias devjava='cd $DEVDIR/Java'
alias devnode='cd $DEVDIR/Node'
alias devbash='cd $DEVDIR/Bash'



source `which virtualenvwrapper_lazy.sh`