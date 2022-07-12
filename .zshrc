# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.config/.histfile
HISTSIZE=1000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ljmill/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

ZSH=/usr/share/oh-my-zsh/

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

######################################################################################

findkeyname() {
  xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'
}

klog() {
  kill -9 $(ps aux | grep "zsh scripts/logger.zsh subscribe" | awk '{ print $2 }' | head -n -1)
  kill -9 $(ps aux | grep "zsh scripts/notif.zsh subscribe" | awk '{ print $2 }' | head -n -1)
}

alias chrome=google-chrome-stable
alias l='exa -la --icons --sort type'
alias e='eww -c $HOME/.config/eww/bar open-many --toggle bar bottom-bar hoverarea'
alias et='ewwl -c $HOME/dotfiles/eww/test open-many --toggle bar'
alias es='ewwl -c $HOME/dotfiles/eww/test state'
alias keyname=findkeyname
alias geo='xdotool selectwindow getwindowgeometry'
alias pywal=colorswitcher
alias dots='cd ~/dotfiles'
alias klog=klog

export PATH=~/dotfiles/bin:~/.local/bin:~/Go/bin:$PATH

## xdg-ninja
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache

source /usr/share/oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
