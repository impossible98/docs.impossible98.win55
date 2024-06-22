#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    vim
# vim version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  Vim: v$(vim --version | head -n 1 | awk '{print $5}')"
echo -e "=============================="
echo -e "\033[0m"
