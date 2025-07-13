error() { echo "$@" >&2; }

asp() {
  if [ -z "$1" ]; then
    unset AWS_DEFAULT_PROFILE AWS_PROFILE AWS_EB_PROFILE AWS_PROFILE_REGION
    echo "AWS profile cleared."
    return 0
  fi

  aws configure list-profiles | grep -qx "$1"
  found=$(( $? == 0 ? 1 : 0 ))

  if [ $found -eq 0 ]; then
    error "Profile '$1' not found in '$HOME/.aws/config}'"
    return 1
  fi

  export AWS_DEFAULT_PROFILE="$1"
  export AWS_PROFILE="$1"
  export AWS_EB_PROFILE="$1"
  export AWS_PROFILE_REGION="$(aws configure get region)"

  if [ "$2" = "login" ]; then
    if [ -n "$3" ]; then
      aws sso login --sso-session "$3"
    else
      aws sso login
    fi
  elif [ "$2" = "logout" ]; then
    aws sso logout
  fi
}
