brewPrefix=$(brew --prefix)

export NVM_DIR="$HOME/.nvm"
[ -s "${brewPrefix}/opt/nvm/nvm.sh" ] && . "${brewPrefix}/opt/nvm/nvm.sh"  # This loads nvm
[ -s "${brewPrefix}/opt/nvm/etc/bash_completion.d/nvm" ] && . "${brewPrefix}/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source ~/._env/alias-tips/alias-tips.plugin.zsh
source "${brewPrefix}"/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source "${brewPrefix}"/share/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f "${brewPrefix}"/etc/profile.d/autojump.sh ] && . "${brewPrefix}"/etc/profile.d/autojump.sh
