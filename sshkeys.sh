#!/bin/bash
#
# There are "better" ways to do this, but in my experience this is more portable
#

KEY_PRIVATE="$HOME/.ssh/id_dsa"
KEY_PUBLIC="${KEY_PRIVATE}.pub"

KEY_REMOTE=$(date +%s)".pub"

if [ "$1" == "" ] ; then
   echo "Generate a private key and add to authorized_keys on the remote host."
   echo "You will be prompted for the password on the remote host."
   echo "Usage: $0 <user>@<host>"
   exit
fi

if [ ! -f "${KEY_PRIVATE}" ] ; then
    echo Creating the private and public keys.
    ssh-keygen -t dsa -f "${KEY_PRIVATE}" -N ''
fi

if [ -f "${KEY_PUBLIC}" ] ; then
    cat "${KEY_PUBLIC}" | \
    ssh "${1}" "mkdir -p ~/.ssh ; cat >> .ssh/authorized_keys2; chmod -R go-rw ~/.ssh"
#   scp "${KEY_PUBLIC}" "${1}:.ssh/${KEY_REMOTE}"
#   ssh "${1}" "cat .ssh/${KEY_REMOTE} >> .ssh/authorized_keys2"
else
   echo Unable to find "${KEY_PUBLIC}" 
fi

