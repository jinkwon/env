brew bundle --file=~/env/Brewfile
mkdir -p ~/.nvm
rm -rf ~/._env ~/.oh-my-zsh/themes/powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
git clone https://github.com/djui/alias-tips.git ~/._env/alias-tips
brewPrefix=$(brew --prefix)
"${brewPrefix}"/opt/fzf/install
