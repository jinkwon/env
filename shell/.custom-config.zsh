export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
source ~/._env/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ycu="yarn-check -u"
alias yi="yarn install"
alias ys="yarn run start"
alias yd="yarn run dev"
alias yb="yarn run build"
alias gd="git pull origin dev && ggcc"
alias ggcc="git branch --merged | grep -v \* | xargs git branch -D "
alias ssh-ad="ssh ubuntu@unicorn.alpha.db"
alias ssh-as="ssh ubuntu@unicorn.alpha.server"
alias kp="lsof -t -i tcp:11002 | xargs kill -9"
alias myhelp="ccat ~/.custom-config.zsh"
kn(){
  kill -9 `ps -ef | grep $1 | awk '{print $2}'`
}
