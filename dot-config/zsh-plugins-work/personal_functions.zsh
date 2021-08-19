oldest_node() {
    check_creds aws ec2 describe-instances --filters "Name=tag:Name,Values=$1" | jq '.Reservations | map(.Instances) | flatten | sort_by(.LaunchTime) | map(.PrivateDnsName) | first'
}
newest_node() {
    check_creds aws ec2 describe-instances --filters "Name=tag:Name,Values=$1" | jq '.Reservations | map(.Instances) | flatten | sort_by(.LaunchTime) | map(.PrivateDnsName) | first'
}

all_nodes() {
    check_creds aws ec2 describe-instances --filters "Name=tag:Name,Values=$1" | jq '.Reservations | map(.Instances) | flatten | sort_by(.LaunchTime) | map(.PrivateDnsName)'
}
check_creds() {
    if [[ -z $AWS_SESSION_TOKEN ]]; then
      echo "export an AWS session token first"
    else
      "$@"
    fi
}

jira() {
  open https://hellosign.atlassian.net/browse/$1
}
