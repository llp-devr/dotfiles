#!/bin/zsh

typeset -g GIT_SIGNING_KEY_LLP
typeset -g GIT_SIGNING_KEY_42
typeset -g GIT_SIGNING_KEY_STK

typeset -g OP_SERVICE_ACCOUNT_TOKEN
[ -z "$OP_SERVICE_ACCOUNT_TOKEN" ] && OP_SERVICE_ACCOUNT_TOKEN=$(secret-tool lookup service 1password type service-account)

git_config_llp() {
  [ -z "$GIT_SIGNING_KEY_LLP" ] && GIT_SIGNING_KEY_LLP=$(OP_SERVICE_ACCOUNT_TOKEN="$OP_SERVICE_ACCOUNT_TOKEN" op read "op://Certificados/SSH Key - id_llp/public key")

  git config --local user.name "Leonardo Lopes Pereira"
  git config --local user.email "leonardolopespereira@outlook.com"
  git config --local user.signingkey "$GIT_SIGNING_KEY_LLP"
  git config --local gpg.format ssh
  git config --local commit.gpgsign true
  echo "Git repo configured locally with email and SSH key"
}

git_config_42() {
  [ -z "$GIT_SIGNING_KEY_42" ] && GIT_SIGNING_KEY_42=$(OP_SERVICE_ACCOUNT_TOKEN="$OP_SERVICE_ACCOUNT_TOKEN" op read "op://Certificados/SSH Key - id_42/public key")

  git config --local user.name "Leonardo Lopes Pereira"
  git config --local user.email "lepereir@student.42.fr"
  git config --local user.signingkey "$GIT_SIGNING_KEY_42"
  git config --local gpg.format ssh
  git config --local commit.gpgsign true
  echo "Git repo configured locally with email and SSH key"
}

git_config_stk() {
  [ -z "$GIT_SIGNING_KEY_STK" ] && GIT_SIGNING_KEY_STK=$(OP_SERVICE_ACCOUNT_TOKEN="$OP_SERVICE_ACCOUNT_TOKEN" op read "op://Certificados/SSH Key - id_zup/public key")

  git config --local user.name "Leonardo Lopes Pereira"
  git config --local user.email "leonardo.lopes@stackspot.com"
  git config --local user.signingkey "$GIT_SIGNING_KEY_STK"
  git config --local gpg.format ssh
  git config --local commit.gpgsign true
  echo "Git repo configured locally with email and SSH key"
}
