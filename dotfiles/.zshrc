# Lines configured by zsh-newuser-install
HISTFILE=~/.config/histfile
setopt HIST_IGNORE_ALL_DUPS
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/twm/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Keybinds

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[1;3C" end-of-line
bindkey "^[[1;3D" beginning-of-line
bindkey "^[[3~"   delete-char
bindkey "^[[3;5~" delete-word
bindkey "^H" backward-delete-word
# Aliases

alias vim='nvim'
alias VMnetwork='sudo virsh net-start default'
alias x='startx'
alias X='DISPLAY=:0 startx'
alias ls='exa --icons --colour=auto'
alias yay='paru'
alias sudo='doas'
alias p='shutdown --poweroff -h now'
alias nvidia-update='cd  ~/Documents/nvidia-all && rm ./*.tar ; git restore .; git pull --rebase  && patch -i ~/Documents/nvidia-driver-config.diff && MAKEFLAGS="-j$(nproc)" makepkg -si && sudo nvidia-modprobe'

prompt="%F{14}[%T %n] %~"$'\n'"╰───$%f "
