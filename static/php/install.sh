#!/usr/bin/env bash

apt update
apt install \
    --no-install-recommends \
    --yes \
    php composer
# php version
# composer version
export COMPOSER_ALLOW_SUPERUSER=1
echo -e "\033[32m"
echo -e "=============================="
echo -e "  PHP:      v  $(php --version | head -n 1  | awk '{print $2}')"
echo -e "  Composer: v   $(composer --version | awk '{print $3}')"
echo -e "=============================="
echo -e "\033[0m"
