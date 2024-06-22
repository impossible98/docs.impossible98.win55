#!/usr/bin/env bash

echo -e "\033[32m"
echo -e "=============================="
echo -e "  Python: v  $(python3 --version | awk '{print $2}')"
echo -e "  pip:    v  $(pip --version | awk '{print $2}')"
echo -e "  PDM:    v   $(pdm --version | awk '{print $3}')"
echo -e "=============================="
echo -e "\033[0m"
apt purge --yes \
    python3 python3-pip python3-pdm
apt autoremove --yes
