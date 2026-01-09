#!/bin/bash

# 환경 설정 스크립트
# Shell 설정 파일 및 Git 설정

set -e  # 에러 발생 시 스크립트 중단

configFile="private.json"

corepack enable

# 필수 명령어 확인
checkCommand() {
  if ! command -v "$1" &> /dev/null; then
    echo "⚠️  $1이(가) 설치되어 있지 않습니다. 계속 진행합니다..."
    return 1
  fi
  return 0
}

# nvm 로드 후 corepack 활성화 (Node.js가 설치된 경우에만)
brewPrefix=$(brew --prefix 2>/dev/null || echo "")
if [ -n "$brewPrefix" ] && [ -s "${brewPrefix}/opt/nvm/nvm.sh" ]; then
  export NVM_DIR="$HOME/.nvm"
  . "${brewPrefix}/opt/nvm/nvm.sh"
  
  if command -v corepack &> /dev/null; then
    corepack enable || echo "⚠️  corepack 활성화 실패 (무시하고 계속 진행)"
  else
    echo "ℹ️  corepack을 찾을 수 없습니다. Node.js가 설치되지 않았을 수 있습니다."
  fi
else
  echo "ℹ️  nvm을 찾을 수 없습니다. corepack 활성화를 건너뜁니다."
fi

initConfig() {
  echo "⚙️  Shell 설정 파일을 복사합니다..."
  
  # 기존 설정 파일 백업 (선택사항)
  if [ -f ~/.custom-config.zsh ] || [ -f ~/.custom-base.zsh ]; then
    echo "ℹ️  기존 설정 파일을 제거합니다..."
  fi
  
  rm -rf ~/.custom-config.zsh ~/.custom-base.zsh ~/.gitconfig ~/.gitignore ~/.vimrc ~/.vim
  
  # shell 디렉토리 확인
  if [ ! -d ~/env/shell ]; then
    echo "❌ ~/env/shell 디렉토리를 찾을 수 없습니다."
    exit 1
  fi
  
  cp -a ~/env/shell/ ~
  echo "✅ Shell 설정 파일 복사 완료"
  
  # .zshrc에 custom-config.zsh 소스 추가
  LINE='[[ ! -f ~/.custom-config.zsh ]] || source ~/.custom-config.zsh'
  if [ -f ~/.zshrc ]; then
    if ! grep -qF -- "$LINE" ~/.zshrc; then
      echo "$LINE" >> ~/.zshrc
      echo "✅ .zshrc에 설정 추가 완료"
    else
      echo "ℹ️  .zshrc에 이미 설정이 추가되어 있습니다."
    fi
    
    # powerlevel10k 테마 설정
    if grep -q "ZSH_THEME=" ~/.zshrc; then
      sed -i '' 's/ZSH_THEME=.*$/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc
      echo "✅ powerlevel10k 테마 설정 완료"
    fi
  else
    echo "⚠️  ~/.zshrc 파일을 찾을 수 없습니다. oh-my-zsh가 설치되지 않았을 수 있습니다."
  fi
  
  echo "✅ 설정 완료"
}

readFile() {
  name=""
  email=""
  
  if [ -f "$configFile" ]; then
    if checkCommand jq; then
      name=$(cat < "$configFile" | jq -r ".name // empty")
      email=$(cat < "$configFile" | jq -r ".email // empty")
    else
      # jq가 없을 경우 간단한 파싱 시도
      name=$(grep -o '"name"[[:space:]]*:[[:space:]]*"[^"]*"' "$configFile" | sed 's/.*"name"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/' || echo "")
      email=$(grep -o '"email"[[:space:]]*:[[:space:]]*"[^"]*"' "$configFile" | sed 's/.*"email"[[:space:]]*:[[:space:]]*"\([^"]*\)".*/\1/' || echo "")
    fi
  fi
}

askInput() {
  read -r -p "$1 입력: " input
  echo "$input"
}

askCommand() {
  if [ -n "$name" ] && [ -n "$email" ]; then
    read -r -p "이 설정을 사용하시겠습니까? (이름: $name, 이메일: $email) (Enter/N): " useThis
    if [ "$useThis" = "N" ] || [ "$useThis" = "n" ]; then
      name=$(askInput "이름")
      email=$(askInput "이메일")
    fi
  else
    echo "Git 설정 정보를 입력해주세요:"
    name=$(askInput "이름")
    email=$(askInput "이메일")
  fi
  
  initGit "$name" "$email"
}

initGit() {
  if [ -z "$1" ] || [ -z "$2" ]; then
    echo "⚠️  Git 설정이 변경되지 않았습니다. (이름 또는 이메일이 비어있음)"
    return
  fi
  
  if ! checkCommand git; then
    echo "❌ Git이 설치되어 있지 않습니다. Git 설정을 건너뜁니다."
    return
  fi
  
  git config --global user.name "$1"
  git config --global user.email "$2"
  echo "✅ Git 설정 완료: $1 <$2>"
  
  # 설정 파일 저장
  if checkCommand jq; then
    echo "{ \"name\": \"$1\", \"email\": \"$2\" }" > "$configFile"
  else
    # jq가 없을 경우 직접 JSON 작성
    echo "{\"name\":\"$1\",\"email\":\"$2\"}" > "$configFile"
  fi
}

# 메인 실행
initConfig
readFile
askCommand

echo ""
echo "🎉 환경 설정이 완료되었습니다!"
echo "💡 터미널을 재시작하거나 'source ~/.zshrc'를 실행하여 설정을 적용하세요."
