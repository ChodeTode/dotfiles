#/bin/bash
~/dotfiles/bootstrap.sh --force
i3 restart
killall polybar
sleep 1
polybar --reload pascalwhoop &
xrdb ~/.Xresources

