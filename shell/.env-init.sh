LINE='[[ ! -f ~/._env/custom-config.zsh ]] || source ~/._env/custom-config.zsh'
FILE='~/.zshrc'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

brew install zsh-syntax-highlighting
