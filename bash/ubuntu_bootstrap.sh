export EDITOR=vim
export XDG_DATA_HOME="~/.local/share/"
#setting display env variable for tmux
export DISPLAY=":0"
#customize bash prompt
export PS1="\u \W $ "

#disable Ctrl-S for freezing the shell
stty -ixon

#NODE VERSION MANAGER
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#making python 3 default
#alias python2=/usr/bin/python
#alias python=python3

#PIP INSTALLED PACKAGES
export PATH=home/pascalwhoop/.local/bin:$PATH

#RUBY VERSION MANAGER
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source /home/pascalwhoop/.rvm/scripts/rvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

function cd() {
            builtin cd "$@" && ls
}
ls

# Avoid duplicates
export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

#add all generic scripts to path / source them
GENERIC_FILES=~/Documents/Code/dotfiles/bash/generic/*
for f in $GENERIC_FILES
do
  # take action on each file. $f store current file name
  source $f
done

#add all ubuntu specific files
UBUNTU_FILES=~/Documents/Code/dotfiles/bash/ubuntu/*
for f in $UBUNTU_FILES
do
  # take action on each file. $f store current file name
  source $f
done

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pascalwhoop/Apps/google-cloud-sdk/path.bash.inc' ]; then source '/home/pascalwhoop/Apps/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/pascalwhoop/Apps/google-cloud-sdk/completion.bash.inc' ]; then source '/home/pascalwhoop/Apps/google-cloud-sdk/completion.bash.inc'; fi

# The next lines set the CUDA environment variables
export PATH=/usr/local/cuda-9.1/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-9.1/lib64

