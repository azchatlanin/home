#!/bin/bash

source /mnt/develop/bin/style

## https://tldp.org/LDP/abs/html/sample-bashrc.html

#PS1="\n$BOLD$BLUE\u@\h$RESET $ITALIC$COLOR_BUILD_0<\w>$RESET\n$ITALIC$COLOR_BUILD_1\$(date +\"%H:%M\")$RESET $BOLD$GREEN$COLOR_BUILD_2[]$RESET : "
#PS1="\n$ITALIC$COLOR_BUILD_1\$(date +\"%H:%M\")$RESET $BOLD$GREEN$COLOR_BUILD_2[]$RESET : "
#PS1="[$ITALIC$COLOR_BUILD_0\w$RESET]\n$BOLD$GREEN$COLOR_BUILD_2[]$YELLOW ->$RESET "
#PS1="$BOLD$GREEN$COLOR_BUILD_2[]$YELLOW ->$RESET "

PS1="\n$ITALIC$COLOR_BUILD_0\w$RESET\n$BOLD$COLOR_BUILD_2[]$RESET$YELLOW ->$RESET "

if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.bash_app_setup ]; then
  . ~/.bash_app_setup
fi

# set history size in the file
HISTFILESIZE=12000

# text to speech
export GOOGLE_APPLICATION_CREDENTIALS=/mnt/develop/application/Golang/TextToSpeach/TextToSpeech-862311f87938.json

# chatlanin
export CHATLANIN_PATH=/mnt/develop/bin
export PROJECT_CPP_PATH=/mnt/develop/projects/cpp

export PATH=$PATH:$CHATLANIN_PATH:$PROJECT_CPP_PATH:/usr/include
# нужно добавить переменнуб окружения $VAMPY_PATH для работы анотатора
# export PATH=$PATH:$CHATLANIN_PATH:$PROJECT_CPP_PATH:/usr/include:$VAMPY_PATH


clear && screenfetch && lst

# set no write file data if exist
set -o noclobber

# nvm (nodw and npm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# устанавливаем кэширование пароля от git. после этого можно делать обновление месона 
# и скачивание репозиториев без ввода пароля по https
git config --global credential.helper 'cache --timeout=108000'
