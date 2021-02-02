# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/home/varun/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	sudo
	extract
	fasd
)

source $ZSH/oh-my-zsh.sh

alias levelup="sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y"

# edit zsh
alias zshconfig="vim ~/.zshrc"

# edit vim plug
alias plug="vim ~/.vimrc.plug"

# git it
alias addall='git add .'
alias add='git add'
alias branch='git branch'
alias checkout='git checkout'
alias main='git checkout main'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias status='git status'

# Home Scripts
export PATH=$PATH:/home/varun/opt
export PATH=$PATH:/home/varun/scripts

# docker
alias compose="docker-compose"

# vscode
alias c="code ."

alias n="nautilus ."

# command shortcuts
alias cclip="xclip -selection clipboard"
alias clipp="xclip -o -selection clipboard"

# GO
export PATH=$PATH:/usr/local/go/bin
export GOPATH=~/go

# aws
export PATH=$PATH:/home/varun/opt/aws-cli/v2/current/bin

# chown
alias allmine="sudo chown -R $(whoami)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export DENO_INSTALL="/home/varun/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fortune | cowsay
