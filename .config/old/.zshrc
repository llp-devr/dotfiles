#####################
### ZINIT INSTALL ###
#####################

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d "$ZINIT_HOME" ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d "$ZINIT_HOME/.git" ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

###############
### PLUGINS ###
###############

zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting

zinit snippet OMZP::aws
zinit snippet OMZP::command-not-found
zinit snippet OMZP::git
zinit snippet OMZP::kubectl
zinit snippet OMZP::sudo

###################
### COMPLETIONS ###
###################

autoload -U compinit && compinit
zinit cdreplay -q

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

##############
### PROMPT ###
##############

[ -f "$ZDOTDIR/p10k.zsh" ] && source "$ZDOTDIR/p10k.zsh"

###############
### HISTORY ###
###############

HISTSIZE=10000
HISTFILE="$ZDOTDIR/zsh_history"
SAVEHIST=10000
HISTDUP=erase

setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_find_no_dups

###############
### BINDKEY ###
###############

bindkey '^p' history-search-backward  # Up arrow
bindkey '^n' history-search-forward   # Down arrow

#############
### ALIAS ###
#############

alias ls='ls --color'
