#!/bin/bash

echo "Update!"

bashrc_path="$HOME/bashrc"

version_local=`cat $bashrc_path/version`
version_github=`curl --silent https://raw.githubusercontent.com/dr4g0nsr/bashrc/main/version`

echo "$version_local => $version_github"

cd $bashrc_path/

git reset --hard
git pull > /dev/null 2>&1
. ./exec.sh

cd ~