#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    neovim
# neovim version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  Neovim: v$(nvim --version | head -n 1 | awk '{print $2}' | sed 's/^v//')"
echo -e "=============================="
echo -e "\033[0m"
