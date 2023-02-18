#!/bin/bash

version_local=`cat version`
version_github=`curl --silent https://raw.githubusercontent.com/dr4g0nsr/bashrc/main/version`

[[ $version_github != $version_local ]] && [[ -f update.sh ]] &&  . ./update.sh && exit 0

[[ -f local_vars.sh ]] &&  . ./local_vars.sh

[[ -f set.sh ]] &&  . ./set.sh
[[ -f complex.sh ]] &&  . ./complex.sh
[[ -f aliases.sh ]] &&  . ./aliases.sh
[[ -f source.sh ]] &&  . ./source.sh

echo "Loaded!"