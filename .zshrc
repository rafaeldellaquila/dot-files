export ZSH="$HOME/.oh-my-zsh"

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/android-studio/bin

#ZSH_THEME="robbyrussell"

function reload() {
  source ~/.zshrc
}

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  colored-man-pages
  command-not-found
  docker
  npm
  ubuntu
)

source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
unsetopt PROMPT_SP

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
