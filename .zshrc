# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e

zstyle :compinstall filename '/home/matt/.zshrc'

autoload -Uz compinit

autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '%b%u%c'
# Format when the repo is in an action (merge, rebase, etc)
zstyle ':vcs_info:git*' actionformats '%F{14}⏱ %*%f'
zstyle ':vcs_info:git*' unstagedstr '*'
zstyle ':vcs_info:git*' stagedstr '+'

# This enables %u and %c (unstaged/staged changes) to work,
# but can be slow on large repos
zstyle ':vcs_info:*:*' check-for-changes true

# Set the right prompt to the vcs_info message
RPROMPT='⎇ ${vcs_info_msg_0_}'

#Default prompt
export PS1="%{$(tput setaf 196)%}[%n%{$(tput setaf 202)%}@%{$(tput setaf 208)%}%m] %{$(tput setaf 220)%}%1~ %{$(tput sgr0)%}$ "

# Plugins
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autocomplete

# Initializes X sesssion
if [[ -o login ]]
then
    if [[ -z "$DISPLAY" ]]
    then
        exec startx -- -keeptty
    fi
fi


alias c="clear;ff"
alias discord="discord --disable-gpu-sandbox"
alias ls="ls -h --color=auto"

xset r rate 300 50

function zsource { source $HOME/.zshrc }

function leetcode { nvim leetcode.nvim }

function ff {
    echo
    fastfetch --logo Gentoo_small --logo-padding-left 2 --color-keys Magenta --title-color-host white --bright-color 1
    echo
} 
ff

export PATH="$PATH:$HOME/scripts"
MANPAGER='nvim +Man!'
EDITOR=nvim
VISUAL=nvim
TERM="xterm-256color"


