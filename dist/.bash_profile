# Base Functions
function fnUpdate() {
   npm i -g bash-profile
   clear
   if [ -z $1 ]; 
      then reset; echo 'Everything is up to date and your current context is [base]'
      else change $1; echo 'Everything is up to date and your current context is ['$1']'
   fi
}

function fnChange() {
   rm -rf ~/.bash_profile
   cp -R ~/.bash_profile-$1 ~/.bash_profile
   source ~/.bash_profile
}

# Base 
alias update='fnUpdate'
alias change='fnChange'
alias reset='source ~/.bash_profile'
alias version='echo base version 0.1.0'

# General Helper
alias c='clear'