export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
source ~/._env/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/._env/zsh-autosuggestions/zsh-autosuggestions.zsh

# yarn
alias ycu="yarn-check -u"
alias yi="yarn install"
alias ys="yarn run start"
alias yd="yarn run dev"
alias yb="yarn run build"

# git
alias ggcc="git branch --merged | grep -v \* | xargs git branch -D "
alias gld="git pull origin dev && ggcc && git fetch -p"
alias gp="git push origin $1"
alias gpf="git push origin $1 --force"
alias gcam="git commit -am $1"

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
