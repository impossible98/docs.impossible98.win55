#!/usr/bin/env bash

echo -e "\033[32m"
echo -e "=============================="
echo -e "  Rust:  v  $(rustc --version | awk '{print $2}')"
echo -e "  Cargo: v  $(cargo --version | awk '{print $2}')"
echo -e "=============================="
echo -e "\033[0m"
apt purge --yes \
    rust-all
apt autoremove --yes
