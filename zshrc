#source /Users/francesco/.bash_profile
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/francesco/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  web-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


##### CONFIGURAZIONI PERSONALI #####
### SYNTAX HIGHLIGHTING
# man page highlight
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export HOMEBREW_CASK_OPTS="--no-quarantine"
export PATH=~/.npm-global/bin:$PATH
export PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"


### PATH
# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# export PATH="~/.composer/vendor/bin:$PATH"

# Add PHP
# export PATH="$PATH:/Applications/MAMP/bin/php/php7.4.21/bin"
# export PATH="$PATH:/Applications/MAMP/Library/bin"
export PATH="/usr/local/opt/php@8.0/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/sbin:$PATH"
# export PATH="/usr/local/opt/php@7.4/bin:$PATH"
# export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.0/bin:$PATH"
# export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"

# Android Studio
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
# Ruby
export PATH=/opt/homebrew/lib/ruby/gems/2.7.0/bin:$PATH

### ALIAS
alias usage='du -h -d1'
alias publicip='curl http://ipecho.net/plain; echo'
# alias localip='ipconfig getifaddr en0'
alias localip="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
# alias localip2='ipconfig getifaddr en1'
alias update='source ~/.zshrc'
alias ls='ls -lAFht' # aggiungendo la 't' si ordinano per ultima modifica e la 'r' ultima modifica reverse
alias exa='exa -laFh --git'
alias boolean='cd ~/Code/Boolean'
alias scriptable='code ~/Library/Mobile\ Documents/iCloud~dk~simonbs~Scriptable/Documents'
alias botfirebase='cd ~/Code/Telegram/Bot\ Ristoranti/ProvaBotFirebase3'
alias brewbundle='brew bundle dump --force --describe'
alias man='batman'
alias sitobutei='cd ~/Code/Butei/official-butei-site && code . && openmamp'
alias webappcase='cd ~/Code/Case/webapp-gestione-case-9 && code . && openmamp'
# alias clearlaravelcache='php artisan config:clear && php artisan route:clear && php artisan view:clear && php artisan event:clear && php artisan cache:clear'
alias laravelcache='php artisan optimize:clear'
alias composercache='composer dump-autoload'
alias clearcache='laravelcache && composercache'

# LARAVEL ALIASES
alias art='php artisan'
alias serve='php artisan serve'
alias servelocal='php artisan serve --host=`localip`'
alias pa='php artisan'
alias pas='php artisan serve'
alias paslocal='php artisan serve --host=`localip`'
alias par:l='php artisan route:list'
alias pam='php artisan migrate'
alias pam:c='php artisan make:component'
alias pav='php artisan -V'
alias c='composer'
alias cr='composer require'
alias cu='composer update'
alias ci='composer install'

# SSH HOSTINGER
alias hostingerssh='ssh -p 65002 u229984210@212.107.17.205'

### FUNCTIONS
function mkcd() {
  mkdir -p "$@" && cd "$_"
}

# funzione per navigare dentro la cartella Code dove sono presenti tutti i progetti di coding
function cdcode() {
  cd ~/Code
}

function paslocal() {
  php artisan serve --host=| grep "ipconfig getifaddr en1"
}

function commit() {
  git add -A
  if [ "$1" != "" ] # or better, if [ -n "$1" ]
  then
    git commit -m "$1"
  else
    git commit -m wip
  fi
}

function commitpush() {
  git add -A
  if [ "$1" != "" ] # or better, if [ -n "$1" ]
  then
    git commit -m "$1"
  else
    git commit -m update
  fi
  git push
}

# creare una funzione per clonare una repo direttamente nella current directory incollando il link e poi aprirla in vscode
function newrepo() {
  if [ "$1" != "" ]
  then
    gh repo create "$1" --public
  else
    echo "Inserisci un nome valido tra virgolette"
  fi
    #gh repo clone "$1"
    #cd $PWD/$1
    mkdir -p "$@" && cd "$_"
    git init
    git add -A
    git commit -m "Init project"
    git branch -M main
    git remote add origin "https://github.com/Frameck/${$1}.git"
    git push -u origin main
    #git remote add origin https://github.com/Frameck/${$1}.git && git branch -M main && git push -u origin main  ##questa riga non funziona
    #git push --set-upstream origin main  ##questa riga non funziona
    code .
    # git remote add origin https://github.com/Frameck/${PWD/*\//}.git
    # git branch -M main
    # git push -u origin main
}

# function clonerepo() {
#   if [ "$1" != "" ]
#   then
#     gh repo clone "$1"
#   else
#     echo "Inserisci un nome valido tra virgolette"
#   fi
#     cd $PWD/$1 && code $PWD
# }

# ${PWD/*\//} => serve per prendere il nome della cartella dove è aperto il terminale
function viewrepo() {
  open https://github.com/Frameck/${PWD/*\//}
}

function openmamp() {
  open -gj -a Mamp
  open "http://localhost:8888/phpMyAdmin5/index.php?route=/server/databases"
  ##open http://localhost:8888/${PWD/*\//}
}

function newlaravel() {
  if [ "$1" != "" ]
  then
    composer create-project --prefer-dist laravel/laravel:^7.0 "$1"
  else
    echo "Inserisci un nome valido tra virgolette"
  fi
    cd $PWD/$1 && code $PWD
}

function scaffoldingLaravel() {
  npm i bootstrap@5 @popperjs/core && npm remove jquery popper.js
  echo "In 'resources/js/bootstrap.js' remove 'require('jquery')' and replace 'popper.js' with '@popperjs/core'"
  composer require doctrine/dbal:^2 laravel/ui:^2.4 nesbot/carbon
  composer remove fzaninotto/faker && composer require fakerphp/faker
  php artisan ui vue --auth
  npm i
  echo "Scaffolding completed, remember to configure .env file"
}

function newmodel() {
  if [ "$1" != "" ]
  then
    php artisan make:model "$1" -cmsr
  else
    echo "Inserisci un nome valido tra virgolette"
  fi
}

function newbranch() {
  if [ "$1" != "" ]
  then
    git checkout -b "$1"
  else
    echo "Inserisci un nome valido"
  fi
    echo "Successfully created new branch named $1"
}

function fixgitcache() {
  if [ "$1" != "" ]
  then
    git rm --cached "$1"
  else
    echo "Inserisci un nome valido per il file"
  fi
    echo "Successfully cleared cache for file: $1"
}