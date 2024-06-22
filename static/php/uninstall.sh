#!/usr/bin/env bash

export COMPOSER_ALLOW_SUPERUSER=1
echo -e "\033[32m"
echo -e "=============================="
echo -e "  PHP:      v  $(php --version | head -n 1  | awk '{print $2}')"
echo -e "  Composer: v   $(composer --version | awk '{print $3}')"
echo -e "=============================="
echo -e "\033[0m"
apt purge --yes \
    php composer
apt autoremove --yes
