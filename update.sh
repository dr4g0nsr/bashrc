#!/bin/bash

echo "Update!"

version_local=`cat ~/bashrc/version`
version_github=`curl --silent https://raw.githubusercontent.com/dr4g0nsr/bashrc/main/version`

echo "$version_local => $version_github"

pushd
cd $bashrc_path/

git pull > /dev/null 2>&1
. ./update.sh
popd