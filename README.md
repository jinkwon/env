# setting default env

## install iterm
https://iterm2.com/


## install brew
https://brew.sh/index_ko


## install git, wget
brew install git wget


## install oh-my-zsh
https://github.com/ohmyzsh/ohmyzsh


## install powerlevel10k
.oh-my-zsh/themes 에 clone 후, .zshrc 의 ZSH_THEME="powerlevel10k/powerlevel10k" 변경.  
재설정 : p10k configure 
```
git clone https://github.com/romkatv/powerlevel10k.git 
```


## install nvm & node
/usr/local/bin/node 는 나중에 react native를 위해 연결해둠
```
brew install nvm
nvm install 14
ln -s $(which node) /usr/local/bin/node
```


## install yarn
brew로 yarn 설치하면 이슈가 있음. node version 이 꼬임.
```
npm install -g yarn
```


## install node packages
```
yarn global add yarn-check @nestjs/cli
```


## install sip (color picker)
https://sipapp.io/updates/#2.5


## install dbeaver
https://dbeaver.io/

