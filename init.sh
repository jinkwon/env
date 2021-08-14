rm -rf ~/.custom-config.zsh ~/.gitconfig ~/.gitignore ~/.vimrc ~/.vim ~/._env
cp -a ~/env/shell/ ~
rm -rf ~/.oh-my-zsh/themes/powerlevel10k
rm -rf ~/._env/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/._env/zsh-syntax-highlighting
mkdir -p ~/.nvm

LINE='[[ ! -f ~/.custom-config.zsh ]] || source ~/.custom-config.zsh'
grep -qF -- "$LINE" ~/.zshrc || echo "$LINE" >> ~/.zshrc

sed -i '' 's/ZSH_THEME=.*$/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
