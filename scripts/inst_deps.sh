#!/usr/bin/env bash
set -eux

export DEBIAN_FRONTEND=noninteractive


### Output list of installed packages


# package removals
apt-get -y --purge remove vim-tiny nano

### Update all packages
apt-get update

# install Linux kernel build stuff; dirmngr is required for GPG
apt-get install -y "linux-headers-$(uname -r)" dirmngr

# sysadmin utils
apt-get install -y gcc

