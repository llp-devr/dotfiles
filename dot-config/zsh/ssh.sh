#!/bin/zsh

typeset -g OP_SERVICE_ACCOUNT_TOKEN
[ -z "$OP_SERVICE_ACCOUNT_TOKEN" ] && OP_SERVICE_ACCOUNT_TOKEN=$(secret-tool lookup service 1password type service-account)

if [ -z "$OP_SERVICE_ACCOUNT_TOKEN" ]; then
    echo "❌ 1Password service account token not found"
    return 1
fi

if [ -z "$SSH_AUTH_SOCK" ]; then
    echo "❌ ssh-agent it not running"
    return 1
fi

typeset -g SSH_KEYS_LOADED
if [ -z "$SSH_KEYS_LOADED" ]; then
    (
        OP_SERVICE_ACCOUNT_TOKEN="$OP_SERVICE_ACCOUNT_TOKEN" op read "op://Certificados/SSH Key - id_42/private key?ssh-format=openssh" | ssh-add -q -
        OP_SERVICE_ACCOUNT_TOKEN="$OP_SERVICE_ACCOUNT_TOKEN" op read "op://Certificados/SSH Key - id_llp/private key?ssh-format=openssh" | ssh-add -q -
        OP_SERVICE_ACCOUNT_TOKEN="$OP_SERVICE_ACCOUNT_TOKEN" op read "op://Certificados/SSH Key - id_zup/private key?ssh-format=openssh" | ssh-add -q -
    )

    SSH_KEYS_LOADED=1
fi
