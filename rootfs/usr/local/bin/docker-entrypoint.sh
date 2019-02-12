#!/bin/sh

set -eo pipefail

AWSPATH="${AWSPATH:-$HOME/.aws}"
REGION="${REGION:-none}"
OUTPUT="${OUTPUT:-none}"
PROFILENAME="${PROFILENAME:-none}"
ROLEARN="${ROLEARN:-none}"

checkdir() {
  if [ ! -d "${AWSPATH}" ]; then
    echo "====== CREATE AWS DIR ======="
    mkdir -p "${AWSPATH}"
  fi
}

createalias() {
  alias aws-shell='aws-shell -p ${PROFILENAME}'
}

checkvars() {
  if [ ! -z "${ACCESSKEY}" ] && [ ! -z "${SECRETKEY}" ] && [ ! -z "${REGION}" ] && [ ! -z "${PROFILENAME}" ] && [ ! -z "${ROLEARN}" ]; then
    checkdir
    tee "${AWSPATH}"/credentials <<EOF
    [default]
    aws_access_key_id = ${ACCESSKEY}
    aws_secret_access_key = ${SECRETKEY}
EOF
    tee "${AWSPATH}"/config <<EOF
    [default]
    region=${REGION}
    output=${OUTPUT}

    [profile ${PROFILENAME}]
    role_arn = ${ROLEARN}
    source_profile = default
    region = ${REGION}
EOF
    
  else
  aws configure
  fi
}

checkvars
createalias

exec "$@"
