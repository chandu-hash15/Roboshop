#!/bin/bash

set -e

component=$1

dnf install ansible -y

ansible-pull -U https://github.com/chandu-hash15/Terra_Ansi_Roles-_Integration.git \
  -i localhost, \
  -e "component=$component"\
  main.yaml