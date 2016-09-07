GITHUB_PASSWORD=`sed "/^\#/d" $HOME/.githubcreds | grep 'password'  | tail -n 1 | cut -d "=" -f2-`
GITHUB_USERNAME=`sed "/^\#/d" $HOME/.githubcreds | grep 'username'  | tail -n 1 | cut -d "=" -f2-`

export DEVDIR=$HOME/Development
export WORKON_HOME=$DEVDIR/Python/Virtualenv
export PROJECT_HOME=$DEVDIR/Python/Projects


alias mkdevdir='mkdir -p $DEVDIR/Python && mkdir -p $DEVDIR/Python/Projects && mkdir -p $DEVDIR/Java && mkdir -p $DEVDIR/Node && mkdir -p $DEVDIR/Bash'

alias dev='cd $DEVDIR'
alias devpy='cd $DEVDIR/Python'
alias devjava='cd $DEVDIR/Java'
alias devnode='cd $DEVDIR/Node'
alias devbash='cd $DEVDIR/Bash'

alias python='python3'
alias pip='pip3'

source `which virtualenvwrapper_lazy.sh`


pips() {
    package_name=$1
    requirements_file=$2
    if [[ -z $requirements_file ]]
    then
        requirements_file='./requirements.txt'
    fi
    pip install $package_name && pip freeze | grep -i $package_name >> $requirements_file
}
