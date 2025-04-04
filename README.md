# Front-end developer's env

## install brew
https://brew.sh/index_ko
brew 설치 후 환경변수 설정

## Prepare
```
// git 설치
brew install git

// oh-my-zsh 설치
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

// brew 환경 설정 후 shell 재시작
echo 'export PATH=/opt/homebrew/bin:$PATH' >> ~/.zshrc

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
nvm install 20
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

## p10k branch 명 줄이지 않게
https://stackoverflow.com/a/66003527

```
// ~/.pk10.zsh or ~/.p10k.zsh
(( $#where > 32 )) && where[13,-13]="…"
```

## Programs
[Brewfile](https://github.com/jinkwon/env/blob/master/Brewfile)


## cli tools
- ccat
- fzf
- jq
