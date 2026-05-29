#!/bin/bash

component =$1

dnf install ansible -y

ansible-pull -U https://github.com/chandu-hash15/Terra_Ansi_Roles-_Integration.git -e = "component=$component" main.yaml    