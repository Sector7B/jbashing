#!/bin/bash

#alias jbashingupdate='wget -N https://bitbucket.org/jgreenaw/jbashing/get/master.zip -O /tmp/jbashing.zip'

APPROOT=$HOME/.jbashing
ENABLED_FOLDER=$APPROOT/enabled
AVAILABLE_FOLDER=$APPROOT/available
ENABLED_FILES=$APPROOT/enabled/*.sh

for f in $ENABLED_FILES
do
  source $f
done

#MANAGEMENT
alias jbenable='ln -s $AVAILABLE_FOLDER/$1.sh $ENABLED_FOLDER/$1.sh'
alias jbdisable='rm $ENABLED_FOLDER/$1.sh'
alias jbinstall='ln -s $1 $ENABLED_FOLDER/$1'
