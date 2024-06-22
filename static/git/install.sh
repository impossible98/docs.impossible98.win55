#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    git
# git version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  Git: v$(git --version | awk '{print $3}')"
echo -e "=============================="
echo -e "\033[0m"
