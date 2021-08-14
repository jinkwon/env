alias ycu="yarn-check -u"
alias yi="yarn install"
alias ys="yarn run start"
alias yd="yarn run dev"
alias yb="yarn run build"
alias gd="git pull origin dev && ggcc"
alias ggcc="git branch --merged | grep -v \* | xargs git branch -D "
alias kp="lsof -t -i tcp:11002 | xargs kill -9"

# zsh-syntax-highlighting
# brew install zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
