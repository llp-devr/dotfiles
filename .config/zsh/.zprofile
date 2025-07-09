##################
### ~/.profile ###
##################

[ -f $HOME/.profile ] && source $HOME/.profile

############
### PATH ###
############

add_path() {
    if [[ -d "$1" ]]; then
        path=("$1" $path)
    fi
}

add_path "/opt/local/bin"
add_path "/usr/local/bin"
add_path "/usr/local/sbin"
add_path "/usr/local/opt/curl/bin"
add_path "/usr/local/opt/coreutils/libexec/gnubin"

add_path "$HOME/.cabal/bin"
add_path "$HOME/.cargo/bin"
add_path "$HOME/.config/emacs/bin"
add_path "$HOME/.ghcup/bin"
add_path "$HOME/.go/root/bin"
add_path "$HOME/.go/path/bin"
add_path "$HOME/.local/bin"
add_path "$HOME/.local/opt/apache-maven/bin"
add_path "$HOME/.node/bin"
add_path "$HOME/.npm/bin"
add_path "$HOME/.pypy/bin"
add_path "$HOME/.rd/bin"
