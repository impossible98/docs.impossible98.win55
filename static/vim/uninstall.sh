#!/usr/bin/env bash

echo -e "\033[32m"
echo -e "=============================="
echo -e "  Vim: v$(vim --version | head -n 1 | awk '{print $5}')"
echo -e "=============================="
echo -e "\033[0m"
apt purge --yes \
    vim
apt autoremove --yes
