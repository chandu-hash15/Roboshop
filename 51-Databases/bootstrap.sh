#!/bin/bash

set -euo pipefail

component=$1

echo "Installing Ansible..."
dnf install ansible -y

echo "Running ansible-pull for $component..."

ansible-pull -U https://github.com/chandu-hash15/Terra_Ansi_Roles_Integration.git \
  -i localhost, \
  -e "component=$component" \
  main.yaml -vv

  