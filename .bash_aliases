# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# question before delete
alias rm='\rm -i'

# cfiles
alias rrr='/mnt/develop/projects/cpp/rrr/build/bin/rrr'

# goto
alias goto='. \goto'

# update system
alias update='yay -Syyu'

# run nvim
alias nv='nvim'

# move to dir
alias ..='cd ..'
alias ....='cd ../../'
alias ......='cd ../../../'
alias ........='cd ../../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# previous command
alias pr='fc -s'

# play video
alias play='mpv'
alias rec='screencast -S rec.mp4'
alias rec_cam='vlc --verbose 3 v4l://:v4l-vdev="/dev/video0" --sout "#transcode{vcodec=mp1v,vb=1024,scale=1,acodec=mpga,ab=192,channels=2}:duplicate{dst=std{access=file,mux=mpeg1,dst=/home/chatlanin/rec_cam.mpg}}"'

# bpytop
alias bp='bpytop'
