rm -rf ~/.custom-config.zsh ~/.gitconfig ~/.gitignore ~/.vimrc ~/.vim
cp -a ~/env/shell/ ~
LINE='[[ ! -f ~/.custom-config.zsh ]] || source ~/.custom-config.zsh'
grep -qF -- "$LINE" ~/.zshrc || echo "$LINE" >> ~/.zshrc
sed -i '' 's/ZSH_THEME=.*$/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
echo "==setting completed ==="