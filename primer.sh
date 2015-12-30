#!/bin/bash

#alias jbashingupdate='wget -N https://bitbucket.org/jgreenaw/jbashing/get/master.zip -O /tmp/jbashing.zip'

JBAPPROOT=$HOME/.jbashing

JBENABLED_FOLDER=$JBAPPROOT/enabled
JBAVAILABLE_FOLDER=$JBAPPROOT/available
JBEXTRAS_FOLDER=$JBAPPROOT/extras

shopt -s nullglob
for f in $JBAPPROOT/enabled/*.sh
do
  source $f
done
shopt -u nullglob

#HELP
alias jbhelp='echo 
"INSTALL: git clone https://github.com/Sector7B/jbashing.git ~/.jbashing
CMDS:     jbenable, jbdisable, jbupdate, jbinstall, jbprime"'
#MANAGEMENT
alias jbprime='source $JBAPPROOT/primer.sh'
function jbenable { ln -s $JBAVAILABLE_FOLDER/$1.sh $JBENABLED_FOLDER/$1.sh && source $JBAPPROOT/primer.sh; }
function jbdisable { rm $JBENABLED_FOLDER/$1.sh && source $JBAPPROOT/primer.sh; }
function jbupdate { JBCD=`pwd` && cd $JBAPPROOT && git pull && cd $JBCD && source $JBAPPROOT/primer.sh; }
function jbinstall { ln -s $1 $JBENABLED_FOLDER/$2 && source $JBAPPROOT/primer.sh; }

export -f jbenable jbdisable jbupdate jbinstall

#alias jbupdate='cd $JBAPPROOT && git pull'
