###########
### GIT ###
###########

git_config_llp() {
  git config --local user.email "leonardolopespereira@outlook.com"
  git config --local user.signingkey "$(echo ~/.certificates/ssh/id_llp)"
  echo "Git repo configured locally with email and SSH key"
}

git_config_42() {
  git config --local user.email "lepereir@student.42.fr"
  git config --local user.signingkey "$(echo ~/.certificates/ssh/id_42)"
  echo "Git repo configured locally with email and SSH key"
}
