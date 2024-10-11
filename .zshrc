ZSH_DISABLE_COMPFIX="true" 
export ZSH="$HOME/.oh-my-zsh"

export PATH=$PATH:/usr/local/opt/node@16/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-11.jdk/Contents/Home
export ANDROID_HOME=~/Library/Android/sdk
export PATH="$PATH:/usr/local/bin"
export PATH="$HOME/.fastlane/bin:$PATH"
export PATH=$PATH:~/android-studio/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:$(go env GOROOT)/bin
export PATH=$PATH:/usr/local/go/bin
PATH=~/.console-ninja/.bin:$PATH
export PATH=$PATH:/Applications/IntelliJ\ IDEA.app/Contents/MacOS
export PATH="/opt/homebrew/opt/mongodb-community@6.0/bin:$PATH"



ZSH_THEME="spaceship"

plugins=(git)

source $ZSH/oh-my-zsh.sh

SPACESHIP_PROMPT_ORDER=(
  user          
  dir           
  host          
  git           
  hg            
  exec_time     
  line_sep    
  jobs          
  exit_code     
  char
  package
  node
  docker
  golang 
)

SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_DIR_COLOR=cyan
SPACESHIP_CHAR_COLOR_SUCCESS=cyan
SPACESHIP_CHAR_SUFFIX="🍀 Wagao "

SPACESHIP_GIT_BRANCH_COLOR=magenta

SPACESHIP_NODE_SHOW=true
SPACESHIP_NODE_SUFFIX=" ➜ "
SPACESHIP_NODE_PREFIX=""
SPACESHIP_NODE_COLOR="green"

SPACESHIP_PACKAGE_SHOW=true
SPACESHIP_PACKAGE_ASYNC=true
SPACESHIP_PACKAGE_SHOW_PRIVATE=false
SPACESHIP_PACKAGE_PREFIX=""
SPACESHIP_PACKAGE_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"
SPACESHIP_PACKAGE_SYMBOL="📦 "
SPACESHIP_PACKAGE_COLOR=red

SPACESHIP_GOLANG_SHOW=true
SPACESHIP_GOLANG_ASYNC=true	
SPACESHIP_GOLANG_PREFIX=$SPACESHIP_PROMPT_DEFAULT_PREFIX
SPACESHIP_GOLANG_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX
SPACESHIP_GOLANG_SYMBOL="🐹 ➜ "	
SPACESHIP_GOLANG_COLOR="cyan"	

export NVM_DIR="$HOME/.nvm"
 [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
 [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

# Two regular plugins loaded without investigating.
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit ice atload"_zsh_autosuggest_start"
zinit light zsh-users/zsh-autosuggestions


# Reload zsh
alias reload="source ~/.zshrc"

# Alias GoLang
alias go='/usr/local/go/bin/go'

# alias zshrc
alias zshrc='code ~/.zshrc'

# alias Gol-Projeto-Cru
alias gol-cru="cd ~/GOL-PROJETO-CRU/GOL_APP_Mobile && code ."

# alias Change Xcode Version
alias xcode_14="sudo xcode-select -s /Applications/Xcode-14.2.0.app/Contents/Developer"

# alias IOS
alias close_all_ios="xcrun simctl shutdown all"
alias erase_all_ios="xcrun simctl erase all"

#alias Gol
alias _ios='yarn ios --simulator "iPhone 15 Pro Max"'
alias _ios_prod="ENVFILE=.env.production yarn ios --simulator 'iPhone 15 Pro Max'"
alias _ios_tsts="ENVFILE=.env.test yarn ios --simulator 'iPhone 15 Pro Max'"
alias _install="yarn && yarn cache clean && rm -rf .yarn"
alias _gol="cd ~/GOL_APP_Mobile && code . && _ios"
alias _gol_install="_install && yarn pod && _ios"

# alias Jest NPM
alias ntest="npm run test"
alias nwatch="npm run watch"
alias ncov="npm run coverage"

# alias Jest Yarn
alias ytest="yarn jest --passWithNoTests"
alias ywatch="yarn jest --passWithNoTests --watch"
alias ycov="yarn jest --passWithNoTests --coverage"

# alias React Native
alias clean-ios="rm -rf ~/Library/Developer/Xcode/DerivedData && rm -rf ~/Library/Caches/CocoaPods && rm -rf ios/build && rm -rf ios/Pods"
alias clean-android="(cd android && ./gradlew clean) && rm -rf node_modules && yarn"
alias clean-gradlew="(cd android && ./gradlew clean)"
alias _start="yarn && bundle install && (cd ios && bundle exec pod install) && _ios"
alias _start-update="yarn && bundle install && (cd ios && bundle exec pod install --repo-update) && _ios"
alias git_cached="git rm --cached NOME_DO_ARQUIVO"

# Alias Projeto CoffStack 

alias _coff="cd ~/CoffStack/nubbleApp && code . && _ios"

# Docs -------------------------------------------------------------------------------- #

## Golang
# GOOS=windows go build hello.go -> Caso queira trocar o SO que aceita o serviço. Pode ser chegado com go env, lá terá todos os ENVS do projeto.

alias go-bench="go test -bench=."
alias go-test="go test -v"
alias go-coverage="go test -coverprofile=coverage.out && go tool cover -html=coverage.out"
alias go-test-fuzz="go test -fuzz=."
alias go-init-project="mkdir internal pkg cmd test api configs && cd cmd && mkdir server && cd server && touch main.go && cd ../../"

# -------------------------------------------------------- # 

## Envs
# git rm --cached .env" # Aqui o arquivo .env está sendo removido do cache do Git.

## Docs Prisma
# npx prisma studio -> Abrir o Prisma Studio
# npx prisma migrate dev -> Criar a primeira migration
# npx prisma migrate reset -> Resetar o banco de dados
# npx prisma migrate deploy -> Deployar a migration
# npx prisma generate -> Gerar os arquivos do Prisma

## Docs Docker Compose
# docker-compose up -d -> Iniciar o Docker Compose e sem os logs
# docker-compose stop -> Parar o Docker Compose e manter os containers
# docker-compose down -> Parar o Docker Compose e deletar os containers
# docker-compose logs -f -> Ver os logs do Docker Compose

## <<<< DICA >>>> Limpar todos os containers no docker de uma vez só.
# docker rm $(docker ps -a -q) -f
# ALIAS PARA LIMPAR TODOS OS CONTAINERS
docker-clean() {
  containers=$(docker ps -a -q)
  if [ -n "$containers" ]; then
    docker rm -f $containers
  else
    echo "Tudo na paz mestre!! Não tem nenhum container rodando."
  fi
}


# -------------------------------------------------------- #


export PATH="/opt/homebrew/bin:$PATH"
