export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kolo"

plugins=(git osx brew mvn)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin/:$PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export RUST_SRC_PATH=$HOME/code/thirdparty/rustc-1.0.0/src/

setopt rmstarsilent

echo -e "\e[1m\e[92m$(fortune -a -s)"

# history stuff
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# fix zsh annoying history behavior
h() { if [ -z "$*" ]; then history 1; else history 1 | egrep "$@"; fi; }

autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '\eOA' up-line-or-beginning-search
bindkey '\e[A' up-line-or-beginning-search
bindkey '\eOB' down-line-or-beginning-search
bindkey '\e[B' down-line-or-beginning-search
