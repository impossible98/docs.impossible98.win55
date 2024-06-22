#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    rust-all
# rust version
# cargo version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  Rust:  v  $(rustc --version | awk '{print $2}')"
echo -e "  Cargo: v  $(cargo --version | awk '{print $2}')"
echo -e "=============================="
echo -e "\033[0m"
