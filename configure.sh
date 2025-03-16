configFile="private.json"

corepack enable

initConfig() {
  rm -rf ~/.custom-config.zsh ~/.custom-base.zsh ~/.gitconfig ~/.gitignore ~/.vimrc ~/.vim
  cp -a ~/env/shell/ ~
  LINE='[[ ! -f ~/.custom-config.zsh ]] || source ~/.custom-config.zsh'
  grep -qF -- "$LINE" ~/.zshrc || echo "$LINE" >> ~/.zshrc
  sed -i '' 's/ZSH_THEME=.*$/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
  echo "=== Setting completed ==="
}

readFile() {
  if [ -f $configFile ]; then
    name=$(cat < $configFile | jq -r ".name")
    email=$(cat < $configFile | jq -r ".email")
  fi
}

askInput() {
  read -r -p "Input $1 : " input
  echo "$input"
}

askCommand() {
  read -r -p "Use this? (name: $name email: $email) (Enter/N) : " useThis
  if [ "$useThis" = "N" ]; then
    name=$(askInput "name")
    email=$(askInput "email")
    initGit "$name" "$email"
  fi
  initGit "$name" "$email"
}

initGit() {
  if [ "$1" = "" ] || [ "$2" = "" ]; then
    echo "Nothing changed"
    return
  fi
  git config --global user.name "$1"
  git config --global user.email "$2"
  echo "{ \"name\": \"$1\", \"email\": \"$2\" }" > $configFile
}

initConfig
readFile
askCommand
