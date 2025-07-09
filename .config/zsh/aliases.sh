#! /bin/zsh

alias_if_exists() {
  local cmd=$1
  local alias_name=$2
  if command -v "$cmd" &> /dev/null; then
    alias "$alias_name"="$cmd"
  fi
}

# EZA
alias_if_exists eza ls

# LAZYGIT
alias_if_exists lazygit lg
