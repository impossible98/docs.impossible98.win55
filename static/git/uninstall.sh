#!/usr/bin/env bash

echo -e "\033[32m"
echo -e "=============================="
echo -e "  Git: v$(git --version | awk '{print $3}')"
echo -e "=============================="
echo -e "\033[0m"
apt purge --yes \
    git
apt autoremove --yes
