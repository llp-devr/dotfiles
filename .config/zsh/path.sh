add_path() {
    if [ -d "$1" ]; then
        PATH="$1:$PATH"
    fi
}

add_path "$HOME/.cargo/bin"
add_path "$HOME/.go/root/bin"
add_path "$HOME/.go/path/bin"
add_path "$HOME/.local/bin"
