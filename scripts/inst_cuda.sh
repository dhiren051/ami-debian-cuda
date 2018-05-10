#!/usr/bin/env bash
#  PURPOSE: Install NVIDIA CUDA drivers on Debian Stretch.
# -----------------------------------------------------------------------------
#  PREREQS: a) Linux Kernel Header files and GCC
#           b)
#           c)
# -----------------------------------------------------------------------------
#  EXECUTE:
# -----------------------------------------------------------------------------
#     TODO: 1)
#           2)
#           3)
# -----------------------------------------------------------------------------
#   AUTHOR: Todd E Thomas
# -----------------------------------------------------------------------------
#  CREATED: 2018/05/09
# -----------------------------------------------------------------------------
set -x


###----------------------------------------------------------------------------
### VARIABLES
###----------------------------------------------------------------------------
# ENV Stuff
#: ${var:-default}
# Data Files
#declare repoDir='cuda/etc/apt/sources.list.d'
#declare repoCUDA="$repoDir/cuda.list"
declare cudaUbuntuRepo='http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1704/x86_64'
declare cudaGPGPubKeyAddr="$cudaUbuntuRepo/7fa2af80.pub"
declare cudaRepoInstaller="$cudaUbuntuRepo/cuda-repo-ubuntu1704_9.1.85-1_amd64.deb"
#declare debTmp="$(mktemp)"


###----------------------------------------------------------------------------
### FUNCTIONS
###----------------------------------------------------------------------------


###----------------------------------------------------------------------------
### MAIN PROGRAM
###----------------------------------------------------------------------------
### Secure the package
###---
printf '%s\n' "Install the CUDA GPG public key..."
apt-key adv --fetch-keys "$cudaGPGPubKeyAddr"


###---
### Create CUDA driver repo file
###---
printf '%s\n' "Creating CUDA Driver repo file..."

curl -k "$cudaRepoInstaller" -o "${cudaRepoInstaller##*/}"
dpkg -i "${cudaRepoInstaller##*/}"
rm -f "${cudaRepoInstaller##*/}"


###---
### Populate the local apt cache
###---
apt-get update


###---
### Install the drivers
### Other installation options are available in the form of meta-packages
### URL: https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#package-manager-metas
###---
apt-get install cuda


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### REQ
###---


###---
### fin~
###---
exit 0
