# Base Functions
function fnUpdate() {
   mkdir -p c:/bpTemp && cd $_
   git clone git@github.com:robsonrosa/bash-profile.git
   cp -R c:/bpTemp/bash-profile/profiles/. ~/
   rm -rf c:/bpTemp
   c && version
}

# Base 
alias update='fnUpdate'
alias reset='source ~/.bash_profile'
alias version='echo version 0.1.0'

# General Helper
alias c='clear'