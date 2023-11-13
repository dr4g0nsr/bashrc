#!/bin/bash

# linux navigation aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ff="find / -type f -exec grep -H '$@' {} \;"

# git
alias git-save='git config credential.helper store'
alias git-exec="git update-index --chmod=+x $@"
alias git-reset="git reset --hard"
alias git-reset-all="git reset --hard HEAD^"

# docker
alias dcd="docker-compose down"
alias dcu="docker-compose up -d"
alias dcc="curl -L https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 --output /tmp/docker-compose && chmod 777 /tmp/docker-compose && mv /tmp/docker-compose /usr/bin/"
alias dcp="docker system prune -a"
alias dps="docker ps -a"
alias deb="docker exec -it $1 /bin/bash"
alias des="docker exec -it $1 /bin/sh"
alias dt="\
(command -v dry >/dev/null 2>&1 && dry) \
|| (command -v dockly >/dev/null 2>&1 && dockly) \
|| (command -v docui >/dev/null 2>&1 && docui) \
|| (command -v dive >/dev/null 2>&1 && dive) \
|| (command -v ctop >/dev/null 2>&1 && ctop) \
|| (command -v sen >/dev/null 2>&1 && sen) \
|| (command -v lazydocker >/dev/null 2>&1 && lazydocker) \
|| echo 'No app found, try to install dockly, dry, docui, dive, ctop, sen, lazydocker'"

# K8S
alias ka="kubeadm $@"
alias kc="kubectl $@"
alias kinit="kubeadm init --pod-network-cidr=10.5.0.0/16 --apiserver-advertise-address=$@"
alias krouter="kubectl apply -f https://raw.githubusercontent.com/cloudnativelabs/kube-router/master/daemonset/kube-router-all-service-daemonset.yaml"

# WP
alias wp80="sudo -u www-data php8.0 wp $@"
alias wpp="sudo -u www-data php wp $@"
alias wpusers="sudo -u www-data wp user list"
alias wpplugins="sudo -u www-data wp plugin list"

# system
alias enable_ipv6='sed -i "/net.ipv6.conf.all.disable_ipv6.*/d" /etc/sysctl.conf && sysctl -q -p && echo 0 > /proc/sys/net/ipv6/conf/all/disable_ipv6 && sed -i "s/#//" /etc/netplan/01-netcfg.yaml && netplan generate && netplan apply'
alias supass="echo $sudo_pass | sudo bash"
alias netplan="cd /etc/netplan"
alias sshpub="cat ~/.ssh/id_rsa.pub"
alias auu="apt update && apt upgrade -y"

# others

