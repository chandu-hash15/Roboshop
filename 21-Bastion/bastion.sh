#!/bin/bash

dnf update -y

dnf install -y dnf-plugins-core unzip

dnf config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo

dnf install -y terraform

terraform version > /tmp/terraform-version.tx