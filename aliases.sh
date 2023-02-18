#!/bin/bash

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# git
alias git-save-credentials='git config credential.helper store'

# docker
alias dcd="docker-compose down"
alias dcu="docker-compose up -d"
alias dcc="curl -L https://github.com/docker/compose/releases/download/v2.16.0/docker-compose-linux-x86_64 --output /tmp/docker-compose && chmod 777 /tmp/docker-compose && mv /tmp/docker-compose /usr/bin/"
alias dcp="docker system prune -a"

# others
