#!/bin/bash

MNT_PATH="/mnt/store/home"

# chatlanin section
if [[ -f $HOME/.bashrc ]]; then
  mv $HOME/.bashrc $HOME/.bashrc_ORIGINAL
fi

ln -s $MNT_PATH/.bashrc 		        $HOME/.bashrc
ln -s $MNT_PATH/.bash_aliases 		  $HOME/.bash_aliases
ln -s $MNT_PATH/.bash_app_setup 	  $HOME/.bash_app_setup
ln -s $MNT_PATH/.config/nvim 		    $HOME/.config/nvim
ln -s $MNT_PATH/.config/ranger 		  $HOME/.config/ranger
ln -s $MNT_PATH/.config/picom.conf	$HOME/.config/picom.conf
ln -s $MNT_PATH/.ssh 			          $HOME/.ssh
ln -s $MNT_PATH/.fehbg 			        $HOME/.fehbg
ln -s $MNT_PATH/.xinitrc		        $HOME/.xinitrc
ln -s $MNT_PATH/.Xresources		      $HOME/.Xresources
echo "Run vimplug_install.sh as chatlanin user"

# root section
if [[ -f /root/.bashrc ]]; then
  sudo mv /root/.bashrc /root/.bashrc_ORIGINAL
fi

sudo mkdir /root/.config

sudo ln -s $MNT_PATH/.bashrc 	     	  /root/.bashrc
sudo ln -s $MNT_PATH/.bash_aliases   	/root/.bash_aliases
sudo ln -s $MNT_PATH/.bash_app_setup 	/root/.bash_app_setup
sudo ln -s $MNT_PATH/.config/nvim    	/root/.config/nvim
sudo ln -s $MNT_PATH/.config/ranger  	/root/.config/ranger
echo "Run vimplug_install.sh as root user"
