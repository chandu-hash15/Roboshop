#!/bin/bash

component=$1

dnf install ansible -y

ansible-pull -u https://github.com/chandu-hash15/Terra_Ansi_Roles_Integration.git -e "component=$component" main.yaml   