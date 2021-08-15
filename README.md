# Front-end developer's env

## install iterm
https://iterm2.com/

## install brew
https://brew.sh/index_ko

## init env
- 아래 커맨드는 순서대로 수행
```
// install packages
brew install git

// install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

// clone env
git clone https://github.com/Jinkwon/env ~/env

// chmod sh
chmod 700 ~/env/init.sh ~/env/configure.sh

// init
~/env/env-init.sh

// 터미널 껐다 켜기 (설정 적용)

// install node
nvm install 14

// /usr/local/bin/node 는 나중에 react native를 위해 연결해둠
ln -s $(which node) /usr/local/bin/node

// install yarn
// brew로 yarn 설치하면 이슈가 있음. node version 이 꼬임
npm install -g yarn

// install addtional node modules
yarn global add yarn-check @nestjs/cli pm2
```

## powerlevel10k 재설정 : p10k configure

## install sip (color picker)
https://sipapp.io/updates/#2.5

## install dbeaver
https://dbeaver.io/

