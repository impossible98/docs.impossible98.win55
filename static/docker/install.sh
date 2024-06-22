#!/usr/bin/env bash

# docs: https://docs.docker.com/engine/install/debian/
apt update
apt purge --yes \
    docker.io docker-doc docker-compose podman-docker containerd runc
if [ ! -d "$HOME/data" ]; then
    mkdir -p "$HOME/data"
fi
if [ ! -e "$HOME/data/containerd.io_1.6.33-1_amd64.deb" ]; then
    echo "Downloading containerd.io_1.6.33-1_amd64.deb"
    curl -o ~/data/containerd.io_1.6.33-1_amd64.deb https://mirrors.aliyun.com/docker-ce/linux/debian/dists/bookworm/pool/stable/amd64/containerd.io_1.6.33-1_amd64.deb
fi
if [ ! -e "$HOME/data/docker-ce-cli_26.1.4-1~debian.12~bookworm_amd64.deb" ]; then
    echo "Downloading docker-ce-cli_26.1.4-1~debian.12~bookworm_amd64.deb"
    curl -o ~/data/docker-ce-cli_26.1.4-1~debian.12~bookworm_amd64.deb https://mirrors.aliyun.com/docker-ce/linux/debian/dists/bookworm/pool/stable/amd64/docker-ce-cli_26.1.4-1~debian.12~bookworm_amd64.deb
fi
if [ ! -e "$HOME/data/docker-ce_26.1.4-1~debian.12~bookworm_amd64.deb" ]; then
    echo "Downloading docker-ce_26.1.4-1~debian.12~bookworm_amd64.deb"
    curl -o ~/data/docker-ce_26.1.4-1~debian.12~bookworm_amd64.deb https://mirrors.aliyun.com/docker-ce/linux/debian/dists/bookworm/pool/stable/amd64/docker-ce_26.1.4-1~debian.12~bookworm_amd64.deb
fi
if [ ! -e "$HOME/data/docker-buildx-plugin_0.14.1-1~debian.12~bookworm_amd64.deb" ]; then
    echo "Downloading docker-buildx-plugin_0.14.1-1~debian.12~bookworm_amd64.deb"
    curl -o ~/data/docker-buildx-plugin_0.14.1-1~debian.12~bookworm_amd64.deb https://mirrors.aliyun.com/docker-ce/linux/debian/dists/bookworm/pool/stable/amd64/docker-buildx-plugin_0.14.1-1~debian.12~bookworm_amd64.deb
fi
if [ ! -e "$HOME/data/docker-compose-plugin_2.27.1-1~debian.12~bookworm_amd64.deb" ]; then
    echo "Downloading docker-compose-plugin_2.27.1-1~debian.12~bookworm_amd64.deb"
    curl -o ~/data/docker-compose-plugin_2.27.1-1~debian.12~bookworm_amd64.deb https://mirrors.aliyun.com/docker-ce/linux/debian/dists/bookworm/pool/stable/amd64/docker-compose-plugin_2.27.1-1~debian.12~bookworm_amd64.deb
fi


dpkg --install ~/data/containerd.io_1.6.33-1_amd64.deb
dpkg --install ~/data/docker-ce-cli_26.1.4-1~debian.12~bookworm_amd64.deb
dpkg --install ~/data/docker-ce_26.1.4-1~debian.12~bookworm_amd64.deb
dpkg --install ~/data/docker-buildx-plugin_0.14.1-1~debian.12~bookworm_amd64.deb
dpkg --install ~/data/docker-compose-plugin_2.27.1-1~debian.12~bookworm_amd64.deb
# docker version
echo -e "\033[32m"
echo -e "=============================="
echo -e "  Docker: v$(docker --version | awk '{print $3}')"
echo -e "=============================="
echo -e "\033[0m"
