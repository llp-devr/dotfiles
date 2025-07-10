#############
### SETUP ###
#############

error() { echo "❌ Error: $@" >&2; }

###########
### GIT ###
###########

git_config_42() {
  git config --local user.email "lepereir@student.42.fr"
  git config --local user.signingkey "$(echo ~/.certificates/ssh/id_42)"
  echo "Git repo configured locally with email and SSH key"
}

git_config_llp() {
  git config --local user.email "leonardolopespereira@outlook.com"
  git config --local user.signingkey "$(echo ~/.certificates/ssh/id_llp)"
  echo "Git repo configured locally with email and SSH key"
}

git_config_stackspot() {
  git config --local user.email "leonardo.lopes@stackspot.com"
  git config --local user.signingkey "$(echo ~/.certificates/ssh/id_zup)"
  echo "Git repo configured locally with email and SSH key"
}

gcl_stk() {
  if [ -z "$1" ]; then
    error "Empty project name"
    return 1
  fi

  if [[ "$1" =~ ^[a-zA-Z0-9._-]+$ ]]; then
    git clone git@gh-leonardo-zup:stack-spot/"$1".git
  else
    error "Invalid project name."
    return 1
  fi
}
