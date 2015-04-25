export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="kolo"

plugins=(git osx brew mvn)

source $ZSH/oh-my-zsh.sh

setopt rmstarsilent

echo -e "\e[1m\e[92m$(fortune -a -s)"h
