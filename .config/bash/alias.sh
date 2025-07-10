#############
### ALIAS ###
#############

alias cp='cp -i'
alias mv='mv -i'

command -v batcat &> /dev/null && \
  alias bat='batcat'

command -v bat &> /dev/null && \
  alias h='history | bat --style plain'

command -v eza &> /dev/null && \
  alias ls='eza'

command -v lazygit &> /dev/null && \
  alias lg='lazygit'
