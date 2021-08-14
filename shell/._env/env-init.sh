LINE='[[ ! -f ~/._env/custom-alias.zsh ]] || source ~/._env/custom-alias.zsh'
FILE='../.zshrc'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
