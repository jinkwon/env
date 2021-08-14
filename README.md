# setting default env

## install iterm
https://iterm2.com/


## install brew
https://brew.sh/index_ko


## init env
- /usr/local/bin/node 는 나중에 react native를 위해 연결해둠
- brew로 yarn 설치하면 이슈가 있음. node version 이 꼬임.
- 아래 커맨드는 순서대로 수행
```
brew install git wget nvm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/Jinkwon/env ~/env
mv -f ~/env/shell/*(DN) ~
chmod 700 .env-init.sh
./.env-init.sh
nvm install 14
ln -s $(which node) /usr/local/bin/node
npm install -g yarn
yarn global add yarn-check @nestjs/cli
```

## install oh-my-zsh
https://github.com/ohmyzsh/ohmyzsh
```

```


## install sip (color picker)
https://sipapp.io/updates/#2.5


## install dbeaver
https://dbeaver.io/

