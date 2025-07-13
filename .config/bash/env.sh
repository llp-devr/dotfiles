#################
### XDG DIRS  ###
#################

export XDG_CACHE_DIR="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

###########
### ZSH ###
###########

export HISTFILE="$ZDOTDIR/zsh_history"
export ZSH_COMPDUMP="$ZDOTDIR/zcompdump"

##################
### FONTCONFIG ###
##################

export FONTCONFIG_PATH="$XDG_CONFIG_HOME/fontconfig"

#############
### GNUPG ###
#############

export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"

###########
### GIT ###
###########

export GIT_CONFIG_GLOBAL="$XDG_CONFIG_HOME/git/config"

##########
### GO ###
##########

export GOPATH="$HOME/.go/path"

############
### JAVA ###
############

export JAVA_HOME="$HOME/.jdk/current"

###########
### NPM ###
###########

export NPM_CONFIG_CACHE="$XDG_CACHE_DIR/npm"
export NPM_CONFIG_USERCONFIG="$XDG_CACHE_DIR/npm/npmrc"

######################
### TESTCONTAINERS ###
######################

export TESTCONTAINERS_RYUK_DISABLED=true

