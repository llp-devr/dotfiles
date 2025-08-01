export SHELL

export BASH_CONFIG_DIR="$HOME/.config/bash"

### ENV
[ -f "$BASH_CONFIG_DIR/env.sh" ] && source "$BASH_CONFIG_DIR/env.sh"

### PATH
[ -f "$BASH_CONFIG_DIR/path.sh" ] && source "$BASH_CONFIG_DIR/path.sh"

### GIT
[ -f "$BASH_CONFIG_DIR/git.sh" ] && source "$BASH_CONFIG_DIR/git.sh"

### MISE
eval "$(mise activate bash)"

### ALIAS
[ -f "$BASH_CONFIG_DIR/alias.sh" ] && source "$BASH_CONFIG_DIR/alias.sh"

### AWS
[ -f "$BASH_CONFIG_DIR/aws.sh" ] && source "$BASH_CONFIG_DIR/aws.sh"

### DOCKER
[ -f "$BASH_CONFIG_DIR/docker.sh" ] && source "$BASH_CONFIG_DIR/docker.sh"

### AUTOCOMPLETE
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

### WSL

[ -n "$WT_SESSION" ] && source "$BASH_CONFIG_DIR/wsl.sh"

### HISTORY
export HISTFILE="$HOME/.history"
export HISTFILESIZE=10000
export HISTSIZE=500
export HISTTIMEFORMAT="%F %T"
export HISTCONTROL=erasedups:ignoredups:ignorespace

shopt -s checkwinsize

shopt -s histappend
PROMPT_COMMAND='history -a'

### COLORS
export CLICOLOR=1
export LS_COLORS='no=00:fi=00:di=00;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.xml=00;31:'

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

### OH-MY-POSH
eval "$(oh-my-posh init bash --config $HOME/.config/oh-my-posh/config.json)"

### ZOXIDE
eval "$(zoxide init bash)"
