#!/bin/bash

#alias jbashingupdate='wget -N https://bitbucket.org/jgreenaw/jbashing/get/master.zip -O /tmp/jbashing.zip'

JBAPPROOT=$HOME/.jbashing

JBENABLED_FOLDER=$JBAPPROOT/enabled
JBAVAILABLE_FOLDER=$JBAPPROOT/available
JBENABLED_FILES=$JBAPPROOT/enabled/*.sh

shopt -s nullglob
for f in $JBENABLED_FILES
do
  source $f
done
shopt -u nullglob

#MANAGEMENT
function jbenable { ln -s $JBAVAILABLE_FOLDER/$1.sh $JBENABLED_FOLDER/$1.sh && souce $JBAPPROOT/primer.sh; }
function jbdisable { rm $JBENABLED_FOLDER/$1.sh && souce $JBAPPROOT/primer.sh; }
function jbupdate { JBCD=`pwd` && cd $JBAPPROOT && git pull && cd $JBCD && souce $JBAPPROOT/primer.sh; }
#function jbinstall { ln -s $1 $JBENABLED_FOLDER/$1; }

export -f jbenable jbdisable jbupdate #jbinstall

#alias jbupdate='cd $JBAPPROOT && git pull'
