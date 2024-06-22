#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    sudo
# sudo version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  sudo: v$(sudo --version | head -n 1 | awk '{print $3}')"
echo -e "=============================="
echo -e "\033[0m"
