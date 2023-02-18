#!/bin/bash

bashrc_path="$HOME/bashrc"

version_local=`cat $bashrc_path/version`
version_github=`curl --silent https://raw.githubusercontent.com/dr4g0nsr/bashrc/main/version`

[[ $version_github != $version_local ]] && [[ -f $bashrc_path/update.sh ]] &&  . $bashrc_path/update.sh && exit 0

[[ -f $bashrc_path/local_vars.sh ]] &&  . $bashrc_path/local_vars.sh

[[ -f $bashrc_path/set.sh ]] &&  . $bashrc_path/set.sh
[[ -f $bashrc_path/complex.sh ]] &&  . $bashrc_path/complex.sh
[[ -f $bashrc_path/aliases.sh ]] &&  . $bashrc_path/aliases.sh
[[ -f $bashrc_path/source.sh ]] &&  . $bashrc_path/source.sh

echo "Bash scripts loaded!"