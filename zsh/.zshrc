# Ensure terminal starts with its own colour scheme (defined below)
# (garbage character shown after update bios, 44014EA ThinkPad Edge E420s)
# export TERM="screen-256color"

# Set main text editor
export EDITOR="vim"

# Reorder PATH so local bin is first
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/games

# Don't clear the screen after quitting a manual page
export MANPAGER="less -X" 

# Path to your oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load
ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HISTFILE=~/.zsh_history
HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=1000000000
SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

# Set plugins to load 
plugins=(git vi-mode)

# Reduce lag to 0.1 sec when change from different vi mode
export KEYTIMEOUT=1

# Use oh-my-zsh framework
source $ZSH/oh-my-zsh.sh

# base16 for unified shell colors
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
