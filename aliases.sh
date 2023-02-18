#!/bin/bash

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git
alias git-save='git config credential.helper store'
alias git-exec="git update-index --chmod=+x $1"
alias git-reset="git reset --hard"
alias git-reset-all="git reset --hard"

# docker
alias dcd="docker-compose down"
alias dcu="docker-compose up -d"
alias dcc="curl -L https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64 --output /tmp/docker-compose && chmod 777 /tmp/docker-compose && mv /tmp/docker-compose /usr/bin/"
alias dcp="docker system prune -a"

# others
alias enable_ipv6='sed -i "/net.ipv6.conf.all.disable_ipv6.*/d" /etc/sysctl.conf && sysctl -q -p && echo 0 > /proc/sys/net/ipv6/conf/all/disable_ipv6 && sed -i "s/#//" /etc/netplan/01-netcfg.yaml && netplan generate && netplan apply'
