brewPrefix=$(brew --prefix)
export PATH=~:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "${brewPrefix}/opt/nvm/nvm.sh" ] && . "${brewPrefix}/opt/nvm/nvm.sh"  # This loads nvm
[ -s "${brewPrefix}/opt/nvm/etc/bash_completion.d/nvm" ] && . "${brewPrefix}/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source ~/._env/alias-tips/alias-tips.plugin.zsh
source "${brewPrefix}"/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source "${brewPrefix}"/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f "${brewPrefix}"/etc/profile.d/autojump.sh ] && . "${brewPrefix}"/etc/profile.d/autojump.sh



# 홈브루 세팅
export PATH=/opt/homebrew/bin:$PATH


# zulu 세팅 (for react native)

export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME/bin

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/latest/bin
