source ~/.custom-base.zsh
# yarn
alias ycu="yarn-check -u"
alias yi="yarn install"
alias ys="yarn run start"
alias yd="yarn run dev"
alias yb="yarn run build"
# git
alias gclr="git branch --merged | grep -v \* | xargs git branch -D "
alias gd="git pull origin dev && gclr && git fetch -p"
alias gs="git status"
alias gl="git pull origin $1"
alias gp="git push origin $1"
alias gpf="git push origin $1 --force"
alias gcam="git commit -am $1"
alias grc="git config --local credential.helper 'cache'"
# ssh
alias ssh-ad="ssh ubuntu@unicorn.alpha.db"
alias ssh-as="ssh ubuntu@unicorn.alpha.server"
# kill
kp(){
  lsof -t -i tcp:$1 | xargs kill -9
}
kn(){
  kill -9 `ps -ef | grep $1 | awk '{print $2}'`
}
# etc
alias menu="ccat ~/.custom-config.zsh"
