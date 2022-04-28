#!/bin/bash

## https://pastebin.com/Q5EU01x3
PS1="\n\033[01;34m╔═ \u@\h \033[01;00m[\033[01;36m\w\033[01;00m]\n\033[01;34m╚═══ :\033[01;00m "

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_app_setup ]; then
  . ~/.bash_app_setup
fi

# set sorting rule
export LC_ALL=C

# chatlanin
export CHATLANIN_PATH=/mnt/develop/bin
export PROJECT_CPP_PATH=/mnt/develop/projects/cpp
export PATH=$PATH:$CHATLANIN_PATH:$PROJECT_CPP_PATH

# vamp export VAMPY_PATH=$HOME/vamp
export PATH=$PATH:$VAMPY_PATH
# text to speech
export GOOGLE_APPLICATION_CREDENTIALS=/mnt/develop/application/Golang/TextToSpeach/TextToSpeech-862311f87938.json

# path setup
export PATH=$PATH:/usr/include:/usr/include

clear && screenfetch && lst

# set no write file data if exist
set -o noclobber

# nvm (nodw and npm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
