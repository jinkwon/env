# Front-end developer's env

## install iterm
https://iterm2.com/

## install brew
https://brew.sh/index_ko

## Prepare
```
brew install git
// install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

// clone env
git clone https://github.com/jinkwon/env ~/env

// chmod sh
chmod 700 ~/env/*.sh
```

## Run script
```
// init everything
// 실행 후 터미널 껐다 켜기 (설정 적용)
~/init.sh

// configure only
~/configure.sh 
```

## help page (run in shell)
```
menu
```

## install node
```
nvm install 14
// /usr/local/bin/node 는 나중에 react native를 위해 연결해둠
ln -s $(which node) /usr/local/bin/node

// install packages
// brew로 yarn 설치하면 이슈가 있음. node version 이 꼬임
npm install -g yarn yarn-check @nestjs/cli pm2 http-server
```

### MacOS 에서 백쿼트(`) 입력 쉽게 하기
```
mkdir -p ~/Library/KeyBindings
cp ./environment/DefaultKeyBinding.dict ~/Library/KeyBindings/
```

## powerlevel10k 재설정 : p10k configure

## install sip (color picker)
https://sipapp.io/updates/#2.5

## Programs
see Brewfile
