#alias and shortcuts
alias kub="kubectl"
alias todo="cd ~/Documents/Syncthing/Notes && vim ./"
alias rmswp='find ./ -name "*.swp" -exec rm {} \;'
alias jupystart="nvidia-docker start jupyter && docker exec -it jupyter bash -c \"jupyter notebook list\""
alias editconky="vim ~/.config/conky/pascalwhoop/conky.conf"
alias plexup="docker container start plex"
alias plexdown="docker container stop plex"
alias jnbup="docker container start tensorflow-notebook"

# cd to specific directories
###############################
alias cdnb="cd /home/pascalwhoop/Documents/Code/Jupyter/Notebooks"
alias cdtac="cd ~/Documents/Code/University/powerTAC"
alias cddot="cd ~/Documents/Code/dotfiles"
alias cdblog='cd ~/Documents/Code/blog/pascalwhoop.github.io'
alias cdcode='cd ~/Documents/Code'
alias cdweb='cd ~/Documents/Code/website/pascalbrokmeier.de'
alias cdbash='cd ~/Documents/Code/bash'
alias cdall='cd ~/Documents/Syncthing/Sync/_ALL'
alias cdai='cd "/home/pascalwhoop/Documents/Code/University/masterthesis"'
alias cdkub="cd ~/Documents/Code/University/powerTAC/powertac-kubernetes"

#short hands for long cli tools
###############################
alias ls='ls -al'
alias r='ranger'
alias x='exit'
alias v='vim ./'

alias ll='ls -laGh'
alias hi="history"
alias open="xdg-open"


# development tools
###############################
alias activate="source venv/bin/activate"
alias clearvim="rm -r /home/pascalwhoop/.vim/sessions\`pwd\`"

