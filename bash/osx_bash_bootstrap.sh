export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_121.jdk/Contents/Home/

#customize bash prompt
export PS1="\u \W $ "

#NODE VERSION MANAGER
source $(brew --prefix nvm)/nvm.sh
export NVM_DIR=~/.nvm
nvm use default


function cd() {
            builtin cd "$@" && ls
}

#add all osx scripts to path / source them
OSX_FILES=/Users/pascalwhoop/Documents/Code/bash/osx/*
for f in $OSX_FILES
do
  # take action on each file. $f store current file name
  source $f
done

#add all generic scripts to path / source them
GENERIC_FILES=/Users/pascalwhoop/Documents/Code/bash/generic/*
for f in $GENERIC_FILES
do
  # take action on each file. $f store current file name
  source $f
done
