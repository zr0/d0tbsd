#  OPENBSD - ZSH
#----------------

# OH MY ZSH
ZSH=$HOME/.oh-my-zsh

# THEME
#ZSH_THEME="michelebologna"
#ZSH_THEME="wuffers-old"
ZSH_THEME="s3r0"

# PLUGINS
plugins=(command-coloring)

# SOURCE
source $ZSH/oh-my-zsh.sh


# OPENBSD PKG_PATH
export PKG_PATH=http://openbsd.mirror.frontiernet.net/pub/OpenBSD/5.6/packages/amd64

# Panel
export PANEL_FIFO="/tmp/panel-fifo"

export PATH=$PATH:~/.config/bspwm/panel

# COLOR MAN PAGE
man() {
        env \
                LESS_TERMCAP_mb=$(printf "\e[1;31m") \
                LESS_TERMCAP_md=$(printf "\e[1;31m") \
                LESS_TERMCAP_me=$(printf "\e[0m") \
                LESS_TERMCAP_se=$(printf "\e[0m") \
                LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
                LESS_TERMCAP_ue=$(printf "\e[0m") \
                LESS_TERMCAP_us=$(printf "\e[1;32m") \
                        man "$@"
}

# COLORLS
# ALIASES
alias ls='colorls -G'
#alias log='tail -f /var/log/messages | ccze - mode ansi'
alias pingme='ping 127.0.0.1 | ccze - mode ansi'
alias openbsd='cat ~/Scripts/openbsd | toilet -f term --gay'
alias obsd='toilet -f block --gay OpenBSD'
alias colors='~/Scripts/./colors'
alias colors2='~/Scripts/./colors2'
alias colorsdna='~/Scripts/./colorsdna'
alias colorsdot='~/Scripts/./colorsdot'
alias spectrum='~/Scripts/./spectrum'
alias info='~/Scripts/./info'
alias pipesx='pipesX.sh -n 3 -R'
alias pipes='pipes.sh'
alias rain='rain.sh'
alias mc='mc -S mc-dc-brown'

# UTF-8
export LAN=Gen_US.UTF-8
export LC_ALL=en_US.UTF-8

# TERM
export TERM=rxvt-unicode-256color


# ZSH HISTORY
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# easier extraction
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2) tar xvjf $1;;
            *.tar.gz) tar xvzf $1;;
            *.bz2) bunzip2 $1;;
            *.rar) unrar x $1;;
            *.gz) gunzip $1;;
            *.tar) tar xvf $1;;
            *.tbz2) tar xvjf $1;;
            *.tgz) tar xvzf $1;;
            *.zip) unzip $1;;
            *.Z) uncompress $1;;
            *.7z) 7za x $1;;
            *) echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
