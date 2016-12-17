# Base Functions
function fnUpdate() {
   mkdir -p c:/bpTemp && cd $_
   git clone git@github.com:robsonrosa/bash-profile.git
   cp -R c:/bpTemp/bash-profile/profiles/. ~/
   rm -rf c:/bpTemp
   if [ -z $1 ]; 
      then reset; 
      else change $1; 
   fi
   c && version
}

function fnChange() {
   rm -rf ~/.bash_profile
   cp -R ~/.bash_profile-$1 ~/.bash_profile
   reset
}

# Base 
alias update='fnUpdate'
alias change='fnChange'
alias reset='source ~/.bash_profile'
alias version='echo base version 0.1.0'

# General Helper
alias c='clear'