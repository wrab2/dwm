# Lines configured by zsh-newuser-install
HISTFILE=~/.config/histfile
setopt HIST_IGNORE_ALL_DUPS
HISTSIZE=10000
SAVEHIST=10000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

prompt="%F{14}[%T %n] %~"$'\n'"╰───$%f "
# Keybinds

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[1;3C" end-of-line
bindkey "^[[1;3D" beginning-of-line
bindkey "^[[3~"   delete-char
bindkey "^[[3;5~" delete-word
bindkey "^H" backward-delete-word

# without this some apps crash when I turn off the screen 
alias x='SDL_VIDEO_X11_XRANDR=0 startx'
alias p='shutdown --poweroff -h now'
alias u='arch-update'
alias ls='eza --icons --colour=auto'
alias vim='nvim'
alias sudo='doas'
alias grep='grep --color=auto'
alias VMnetwork='doas virsh net-start default'
alias bu='cp ~/Videos/Shrek/Shrek.mp4 /run/media/twm/301925D0397CD80F/Shrek/"$(date +%b-%d-%y).mp4"'
alias offline='firejail --net=none --noprofile'
#mobile phone service provider scam
alias tethering='echo 65 | sudo tee /proc/sys/net/ipv4/ip_default_ttl'
#I hate it here
alias yt-dlp='proxychains yt-dlp'

function nvidia-update() {
    cd  ~/Documents/nvidia-all && 
    rm ./*.tar ;
    git restore .; 
    git pull --rebase  && 
    patch -i ~/dwm/dotfiles/nvidia-customization.diff &&
    MAKEFLAGS="-j$(nproc)" 
    makepkg -si && 
    sudo nvidia-modprobe
}

# pnpm
export PNPM_HOME="/home/twm/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
