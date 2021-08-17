brew install ccat fzf wget nvm jq
./configure.sh
mkdir -p ~/.nvm
rm -rf ~/._env ~/.oh-my-zsh/themes/powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/._env/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/._env/zsh-autosuggestions
