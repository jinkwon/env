# ohmyzsh 설치
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# brew deps 설치
brew bundle --file=~/env/Brewfile

# nvm 환경 폴더 추가
mkdir -p ~/.nvm

# powerlevel10k 설치
rm -rf ~/._env ~/.oh-my-zsh/themes/powerlevel10k
git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k

# alias tips 설정
git clone https://github.com/djui/alias-tips.git ~/._env/alias-tips
brewPrefix=$(brew --prefix)

# fzf 설치 (ctrl+r)
"${brewPrefix}"/opt/fzf/install

# MacOS 에서 백쿼트(`) 입력 쉽게 하기
mkdir -p ~/Library/KeyBindings && cp ./environment/DefaultKeyBinding.dict ~/Library/KeyBindings/
