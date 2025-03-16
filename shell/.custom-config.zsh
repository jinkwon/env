source ~/.custom-base.zsh
# ssh
alias ssh-ad="ssh ubuntu@unicorn.alpha.db"
alias ssh-as="ssh ubuntu@unicorn.alpha.server"
# yarn
alias ycu="yarn upgrade-interactive"
alias yi="yarn install"
alias ys="yarn run start"
alias yd="yarn run dev"
alias yb="yarn run build"
alias ya="yarn add $1 $2"

# npm
alias nd="npm run dev"
alias ns="npm run start"
alias nb="npm run build"

# git
alias grrc="git rm -r --cached ."
alias gclr='git fetch -p && git branch --merged | grep -v "\*" | grep -v release | grep -v main | grep -v master | grep -v develop | xargs -n 1 git branch -d'
alias gd="git pull origin dev && gclr && git fetch -p"
alias gs="git status"
alias gl="git pull origin $1"
alias gp="git push origin $1"
alias gpf="git push origin $1 --force"
alias gcam="git commit -am $1"
alias grc="git config --local credential.helper 'cache'"
alias hosts="sudo vim /etc/hosts"
alias gclrt="git tag -l | xargs git tag -d"

# kill
_kp(){ lsof -t -i tcp:$1 | xargs kill -9; }
_kn(){ kill -9 `ps -ef | grep $1 | awk '{print $2}'`; }
# etc
alias _menu="ccat ~/.custom-config.zsh"
alias _port="lsof -PiTCP -sTCP:LISTEN"
_dockerrmf(){ docker stop $1;docker rm $1; }

#kube
alias kube-ctx="kubectl config use-context $1"

alias pinggy="ssh -p 443 -R0:localhost:3000 qr@a.pinggy.io"
