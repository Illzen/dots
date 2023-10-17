DISABLE_MAGIC_FUNCTIONS='true'
HIST_STAMPS="yyyy-mm-dd"
#
#Environment
#
export LANG=zh_CN.UTF-8
export EDITOR=nvim
#
#Themes
#
eval "$(starship init zsh)"
#
#Tmux
#
# if [[ -z "$TMUX" ]] ;then
#     ID="`tmux ls | grep -vm1 attached | cut -d: -f1`" # get the id of a deattached session
#     if [[ -z "$ID" ]] ;then # if not available create a new one
#         tmux new-session
#     else
#         tmux attach-session -t "$ID" # if available attach to it
#     fi
# fi
#
#代理
#
# export http_proxy='http://127.0.0.1:7890' 
# export https_proxy='http://127.0.0.1:7890' 
# export socks_proxy='socks://127.0.0.1:7891' 

alias clash_on="
                export http_proxy='http://127.0.0.1:7890' 
                export https_proxy='http://127.0.0.1:7890' 
                export socks_proxy='socks://127.0.0.1:7891' 
                git config --global http.proxy 'http://127.0.0.1:7890'
                git config --global https.proxy 'http://127.0.0.1:7890'
                git config --global socks.proxy 'socks://127.0.0.1:7891'
              "
alias clash_off="
                export http_proxy='' 
                export https_proxy='' 
                export socks_proxy='' 
                git config --global http.proxy '' 
                git config --global https.proxy '' 
                git config --global socks.proxy '' 
                "
#
#Alias
#
alias tomcaton='sudo /usr/share/tomcat10/bin/startup.sh'
alias tomcatoff='sudo /usr/share/tomcat10/bin/shutdown.sh'
alias sudo='sudo '
alias nv=' nvim '
alias v=' vim '
alias pm=' pacman '
alias ls=' ls --color '
alias grep=' grep --color '
alias pacin='sudo pacman -S '
alias pacup='sudo pacman -Syu '
alias pacout='sudo pacman -Rns '
alias paclist='sudo pacman -Qe '
alias yayin='yay -S '
alias yayup='yay -Syu '
alias yayout='yay -Rns '
alias yaylist='yay -Qe '
alias docker='sudo docker '
alias systemctl='sudo systemctl '
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'


### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions


# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
autoload -Uz compinit
compinit
#. /etc/profile.d/fzf.zsh
export PATH=$PATH:/home/zen/.spicetify
