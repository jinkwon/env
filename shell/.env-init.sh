brew install zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

LINE='[[ ! -f ~/._env/custom-config.zsh ]] || source ~/._env/custom-config.zsh'
FILE='~/.zshrc'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

