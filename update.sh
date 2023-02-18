#!/bin/bash

echo "Update!"
echo "$version_local => $version_github"

git pull > /dev/null 2>&1
. ./update.sh