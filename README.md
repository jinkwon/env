# Front-end developer's env

## install brew
https://brew.sh/index_ko
brew 설치 후 환경변수 설정
```
echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc
```

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Prepare
```
brew install git

// clone env
git clone https://github.com/jinkwon/env ~/env

// chmod sh
chmod 700 ~/env/*.sh
```

## Run script
```
// init everything
// 실행 후 터미널 껐다 켜기 (설정 적용)
~/env/init.sh

// configure only
~/env/configure.sh 
```

## help page (run in shell)
```
_menu
```

## install node
```
nvm install 14
// /usr/local/bin/node 는 나중에 react native를 위해 연결해둠
ln -s $(which node) /usr/local/bin/node

// install packages
// brew로 yarn 설치하면 이슈가 있음. node version 이 꼬임
npm install -g yarn @nestjs/cli pm2 http-server
```

## powerlevel10k 재설정
```
p10k configure
```

## Programs
[Brewfile](https://github.com/jinkwon/env/blob/master/Brewfile)


## cli tools
- ccat
- fzf
- jq
