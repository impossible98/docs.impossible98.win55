#!/usr/bin/env bash

echo -e "\033[32m"
echo -e "=============================="
echo -e "  Docker: v$(docker --version | awk '{print $3}')"
echo -e "=============================="
echo -e "\033[0m"
apt purge --yes \
    docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
apt autoremove --yes
rm -rf /var/lib/docker
rm -rf /var/lib/containerd
