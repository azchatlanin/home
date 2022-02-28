# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  #alias lsh='ls -la --color=auto --group-directories-first --file-type'
  #alias ls='ls -l --color=auto --group-directories-first --file-type'
  alias dir='dir --color=auto'
  alias vdir='vdir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# tree
alias lst='tree -asv --dirsfirst -L 1 ./'
alias lst1='tree -asv --dirsfirst -L 2 ./'
alias lst2='tree -asv --dirsfirst -L 3 ./'
alias lst3='tree -asv --dirsfirst -L 4 ./'
alias lst4='tree -asv --dirsfirst -L 5 ./'
alias lst5='tree -asv --dirsfirst -L 6 ./'

# question before delete
alias rm='\rm -i'
alias delete='rm -rf'

# clear
alias cl='clear'

# cfiles
alias rrr='ranger'

# goto
alias goto='. \goto'

# update system
alias update='yay -Syyu'

# run nvim
alias nv='nvim'

# move to dir
alias ..='cd ..'
alias ...='cd ../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# navigation 
LAST_PATH_POSITION=""
function previous_path_position()
{
  cd $LAST_PATH_POSITION
}

function next_path_posotion()
{
  LAST_PATH_POSITION=$(pwd)
  cd ..
}

alias .gn='next_path_posotion'
alias .gp='previous_path_position'

# previous command
alias pr='fc -s'

#play video
alias play='mpv'
