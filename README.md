# setting default env

## install iterm
https://iterm2.com/


## install brew
https://brew.sh/index_ko


## install git, wget, nvm, node, yarn, yarn-check, nest cli
- /usr/local/bin/node 는 나중에 react native를 위해 연결해둠
- brew로 yarn 설치하면 이슈가 있음. node version 이 꼬임.
```
brew install git wget nvm
nvm install 14
ln -s $(which node) /usr/local/bin/node
npm install -g yarn
yarn global add yarn-check @nestjs/cli
```

## install oh-my-zsh
https://github.com/ohmyzsh/ohmyzsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## clone env
git clone https://github.com/Jinkwon/env ~/env

## copy env & init
```
mv -f ~/env/shell/*(DN) ~
chmod 700 .env-init.sh
./.env-init.sh
```


## install sip (color picker)
https://sipapp.io/updates/#2.5


## install dbeaver
https://dbeaver.io/

