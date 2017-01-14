
# Git Helper
# ----------
deleteBranch() {
  git branch -d $1
  git push origin :$1
}

alias gs='git status'
alias gp='git push'
alias gpt='git push --follow-tags'
alias gd='git diff'
alias ga='git add'
alias gr='git rm'
alias gc='git commit -m'
alias gca='git commit --amend'
alias gck='git checkout'
alias glo="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias gsta='git stash save -u'
alias gstaa='git stash apply'
alias gdb='deleteBranch'
