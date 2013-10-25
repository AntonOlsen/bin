#!/bin/bash
#
# Script to deploy the bin files to a new home dir

cd `dirname $0`

chmod o-rwx *
chmod ug+rw *.sh .bash* rgr
chmod ug+x  *.sh .bash* rgr

cp .bash* ~/
