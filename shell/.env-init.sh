rm -rf ~/.oh-my-zsh/themes/powerlevel10k
rm -rf ~/._env/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/._env/zsh-syntax-highlighting

# set custom zsh config
LINE='[[ ! -f ~/._env/custom-config.zsh ]] || source ~/._env/custom-config.zsh'
FILE='./.zshrc'
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"

# replace theme
sed -i '' 's/ZSH_THEME=.*$/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
