#!/usr/bin/env bash

echo -e "\033[32m"
echo -e "=============================="
echo -e "  Go: v$(go version | awk '{print $3}' | sed 's/^go//')"
echo -e "=============================="
echo -e "\033[0m"
rm -rf ~/go
apt purge --yes \
    golang
apt autoremove --yes
