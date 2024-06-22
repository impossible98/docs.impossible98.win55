#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    python3 python3-pip python3-pdm
# python version
# pip version
# pdm version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  Python: v  $(python3 --version | awk '{print $2}')"
echo -e "  pip:    v  $(pip --version | awk '{print $2}')"
echo -e "  PDM:    v   $(pdm --version | awk '{print $3}')"
echo -e "=============================="
echo -e "\033[0m"
