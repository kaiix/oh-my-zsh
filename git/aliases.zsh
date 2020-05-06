# The rest of my fun git aliases
alias ga='git add .'
alias gu='git pull --prune'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gdc='git diff --cached'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gf='git fetch'
alias g2='git rebase -i HEAD~2'
alias g1='git rebase -i HEAD~1'
alias gr="git rebase -i"
#alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
