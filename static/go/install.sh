#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    golang
# go version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  Go: v$(go version | awk '{print $3}' | sed 's/^go//')"
echo -e "=============================="
echo -e "\033[0m"
